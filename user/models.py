# -*- coding: utf-8 -*-

from django.contrib.auth.hashers import make_password, check_password
from django.db import models
from django.contrib.auth.models import BaseUserManager


class User(models.Model):
    """
    平台用户
    """

    objects = BaseUserManager()  # 使用django自带的user object manager, 以复用django authenticate和django login.
    USERNAME_FIELD = 'email'  # 用于django authenticate的字段
    REQUIRED_FIELDS = []

    name = models.CharField(max_length=16, null=True)
    email = models.CharField(max_length=128, unique=True)
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
