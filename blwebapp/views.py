# -*- coding: utf-8 -*-
from enum import Enum
from functools import wraps

from django.db import transaction
from django.http import JsonResponse
from django.utils.decorators import method_decorator
from django.views.generic import View

from blwebapp.models import Project, Receiver, Transaction
from user.models import User


def require_super_user(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        request = args[0]
        user = request.user
        if not hasattr(user, 'is_superuser') or not user.is_superuser:
            return JsonResponse(status=401, data=dict(errmsg='Only supperuser can do this.'))
        else:
            return func(*args, **kwargs)
    return wrapper


def login_required(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        request = args[0]
        if not hasattr(request, 'user') or not isinstance(request.user, User):
            return JsonResponse(status=401, data=dict(errmsg='Login required'))
        else:
            return func(*args, **kwargs)
    return wrapper


class ProjectList(View):

    @method_decorator(require_super_user)
    def get(self, request):
        projects = []
        for project in Project.objects.all():
            projects.append(dict(
                name=project.name,
                address=project.address,
                description=project.description,
                headcount=project.headcount,
                target=project.target,
                received_pool=project.received_pool,
                received_total=project.received_total,
            ))
        return JsonResponse(status=200, data=dict(projects=projects))

    @method_decorator(require_super_user)
    def post(self, request):
        data = request.DATA
        name = data.get('name')
        address = data.get('address')
        description = data.get('description')
        headcount = int(data.get('headcount'))
        target = int(data.get('target'))
        project = Project.objects.create(name=name, address=address, description=description,
                                         headcount=headcount, target=target)
        receivers = [receiver.id for receiver in [Receiver.objects.create(project=project) for _ in range(headcount)]]
        return JsonResponse(status=200, data=dict(id=project.id, receivers=receivers))


class ProjectDetail(View):

    def get(self, request, project_id):
        pass

    @method_decorator(require_super_user)
    def put(self, request, project_id):
        project = Project.objects.get(id=project_id)
        data = request.DATA
        project.name = data.get('name')
        project.address = data.get('address')
        project.description = data.get('description')
        project.headcount = int(data.get('headcount'))
        project.target = int(data.get('target'))
        return JsonResponse(status=200, data=dict(msg='ok'))


class ReceiverList(View):

    @method_decorator(require_super_user)
    def get(self, request, project_id):
        project = Project.objects.get(id=project_id)
        receivers = []
        for receiver in project.receivers.all():
            receivers.append(dict(
                id=receiver.id,
                name=receiver.name,
                address=receiver.address,
                gender=receiver.gender,
                age=receiver.age,
                description=receiver.description,
                target=receiver.target,
                received=receiver.received,
            ))
        return JsonResponse(status=200, data=dict(receivers=receivers))


class ReceiverDetail(View):

    def get(self, request, project_id, receiver_id):
        receiver = Receiver.objects.get(id=receiver_id)

        data = dict(
                id=receiver.id,
                name=receiver.name,
                address=receiver.address,
                gender=receiver.gender,
                age=receiver.age,
                description=receiver.description,
                target=receiver.target,
                received=receiver.received,
        )
        return JsonResponse(status=200, data=data)

    def put(self, request, project_id, receiver_id):

        receiver = Receiver.objects.get(id=receiver_id)
        data = request.DATA
        receiver.name = data.get('name') if data.get('name') else receiver.name
        receiver.address = data.get('address') if data.get('address') else receiver.address
        receiver.gender = data.get('gender') if data.get('gender') else receiver.gender
        receiver.age = int(data.get('age')) if data.get('age') else receiver.age
        receiver.description = data.get('description') if data.get('description') else receiver.description
        receiver.target = int(data.get('target')) if data.get('target') else receiver.target
        receiver.save()

        return JsonResponse(status=200, data=dict(msg='ok'))


class TransactionList(View):

    @method_decorator(login_required)
    def post(self, request):
        data = request.DATA
        sender = int(data.get('sender'))
        receiver = int(data.get('receiver'))
        sender_type = SenderType(data.get('sender_type'))
        receiver_type = ReceiverType(data.get('receiver_type'))
        amount = int(data.get('amount'))
        with transaction.atomic():
            transation = Transaction.objects.create(sender=sender, receiver=receiver, sender_type=sender_type.value,
                                                    receiver_type=receiver_type.value, amount=amount)
            # Move money from project to receiver
            if sender_type == SenderType.PROJECT and receiver_type == ReceiverType.RECEIVER:
                project = Project.objects.get(id=sender)
                receiver = Receiver.objects.get(id=receiver)
                assert receiver.project == project
                project.received_pool -= amount
                project.save(update_fields=['received_pool'])
                receiver.received += amount
                receiver.save(update_fields=['received'])
            # Donate to project
            elif sender_type == SenderType.USER and receiver_type == ReceiverType.PROJECT:
                project = Project.objects.get(id=receiver)
                project.received_pool += amount
                project.save(update_fields=['received_pool'])
            # Donate to receiver
            elif sender_type == SenderType.USER and receiver_type == ReceiverType.RECEIVER:
                receiver = Receiver.objects.get(id=receiver)
                receiver.received += amount
                receiver.save(update_fields=['received'])

        return JsonResponse(status=200, data=dict(id=transation.id))


@login_required
def get_transactions(request, user_id):
    user = request.user
    transactions = Transaction.objects.filter(sender=user.id, sender_type=SenderType.USER)
    transactions_list = []
    for transaction in transactions:
        transactions_list.append(dict(
            sender=transaction.sender,
            receiver=transaction.receiver,
            sender_tpe=transaction.sender_type,
            receiver_type=transaction.receiver_type,
            amount=transaction.amount,
            timestamp=transaction.timestamp,
        ))
    return JsonResponse(status=200, data=dict(transactions=transactions_list))


class SenderType(Enum):
    PROJECT = 'project'
    USER = 'user'


class ReceiverType(Enum):
    PROJECT = 'project'
    RECEIVER = 'receiver'


