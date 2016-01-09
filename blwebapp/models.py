# -*- coding: utf-8 -*-

from django.contrib.auth.hashers import make_password, check_password
from django.db import models
from django.contrib.auth.models import BaseUserManager
from django.http import QueryDict
from django.utils.datastructures import MultiValueDict


class Project(models.Model):
    name = models.CharField(max_length=64)
    address = models.CharField(max_length=256)
    description = models.CharField(max_length=256)
    headcount = models.IntegerField()
    target = models.IntegerField()
    received_pool = models.IntegerField(default=0)

    @property
    def received_total(self):
        total = 0
        for receiver in self.receivers.all():
            total += receiver.received
        return self.received_pool + total

    def __str__(self):
        return "Project %s: headcount: %s, target: %s, received_total: %s" % (
            self.name, self.headcount, self.target, self.received_total)


class Receiver(models.Model):
    name = models.CharField(max_length=64, null=True)
    address = models.CharField(max_length=256, null=True)
    gender = models.CharField(max_length=6, null=True)
    age = models.IntegerField(null=True)
    description = models.CharField(max_length=256, null=True)
    target = models.IntegerField(null=True)
    received = models.IntegerField(default=0)
    project = models.ForeignKey(Project, related_name='receivers')

    def __str__(self):
        return "Receiver %s: target: %s, received :%s, project: %s" % (
            self.name, self.target, self.received, self.project)


class Transaction(models.Model):
    sender = models.IntegerField()
    receiver = models.IntegerField()
    sender_type = models.CharField(max_length=7)
    receiver_type = models.CharField(max_length=7)
    amount = models.IntegerField()
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return "Transaction: sender: (%s, %s), receiver: (%s, %s), amount: %s" % (
            self.sender_type, self.sender, self.receiver_type, self.receiver, self.amount)


class User(models.Model):
    """
    平台用户
    """

    objects = BaseUserManager()  # 使用django自带的user object manager, 以复用django authenticate和django login.
    USERNAME_FIELD = 'name'  # 用于django authenticate的字段
    REQUIRED_FIELDS = []

    name = models.CharField(max_length=16, unique=True)
    email = models.CharField(max_length=128, unique=True, null=True)
    phone = models.CharField(max_length=11, unique=True, null=True)
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    create_at = models.DateTimeField(auto_now_add=True)
    update_at = models.DateTimeField(auto_now=True)
    is_superuser = models.BooleanField(default=False)

    def __str__(self):
        return "%s: %s" % (self.name, self.email)

    def set_password(self, raw_password, save=False):
        self.password = make_password(raw_password)
        if save:
            self.save(update_fields=['password'])

    def check_password(self, raw_password):
        """
        Returns a boolean of whether the raw_password was correct. Handles
        hashing formats behind the scenes.
        """
        def setter(raw_password):
            self.set_password(raw_password)
            self.save(update_fields=["password"])
        return check_password(raw_password, self.password, setter)


class RestMiddleware:

    def process_request(self, request):
        """
        拦截所有request进入, 并把url参数和body里面的参数封装到request.DATA.
        """

        # 封装request.DATA
        request.DATA = QueryDict('')
        if request.META.get('CONTENT_TYPE', '').startswith('multipart'):
            request.DATA, request._files = request.parse_file_upload(request.META, request)
        else:
            body = request.body.decode()  # body为key-value的二进制str
            request.DATA, request._files = QueryDict(body), MultiValueDict()
        if not request.DATA.dict() and request.method == 'GET':
            request.DATA = request.GET
