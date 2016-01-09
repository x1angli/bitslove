# -*- coding: utf-8 -*-

from django.contrib.auth import login as django_login
from django.contrib.auth import logout as django_logout
from django.contrib.auth import authenticate
from django.http import JsonResponse, HttpResponse
from django.views.decorators.http import require_POST

from user.models import User


@require_POST
def login(request):
    """登录view, 将带着set-cookie返回"""

    data = request.DATA

    name = data.get('name')
    password = data.get('password')
    user = authenticate(username=name, password=password)

    if not user:
        return JsonResponse(data=dict(errmsg='用户名与密码不匹配'), status=400)

    django_login(request, user)
    return JsonResponse(status=200, data=dict(id=user.id))


@require_POST
def logout(request):
    """登出view, 将带着set-cookie返回"""
    django_logout(request)
    return HttpResponse(status=200)


@require_POST
def register(request):
    data = request.DATA
    email = data.get('email')
    phone = data.get('phone')
    name = data.get('name')
    password = data.get('password')

    if User.objects.filter(email=email).exists():
        return JsonResponse(status=400, data=dict(errmsg='邮箱已经存在'))

    user = User.objects.create(name=name, email=email, phone=phone)
    user.set_password(password, save=True)
    return JsonResponse(status=200, data=dict(id=user.id))

