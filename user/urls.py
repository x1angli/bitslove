# -*- coding: utf-8 -*-

from django.conf.urls import patterns, url
from user import views

urlpatterns = patterns('',
                       url(r'^login/password$', views.login),
                       url(r'^logout$', views.logout),
                       url(r'^users$', views.register),
                       )