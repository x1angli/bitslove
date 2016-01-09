# -*- coding: utf-8 -*-

from django.conf.urls import patterns, url
from user import views

urlpatterns = patterns('',
                       url(r'^users/login$', views.login),
                       url(r'^users/logout$', views.logout),
                       url(r'^users$', views.register),
                       )