# -*- coding: utf-8 -*-

from django.conf.urls import url
from blwebapp import views

urlpatterns = [
    url(r'^$', views.to_index, name='index'),
    url(r'^projects$', views.ProjectList.as_view(), name='projects'),
    url(r'^projects/(?P<project_id>[0-9]+)$', views.ProjectDetail.as_view()),
    url(r'^projects/(?P<project_id>[0-9]+)/receivers$', views.ReceiverList.as_view()),
    url(r'^projects/(?P<project_id>[0-9]+)/receivers/(?P<receiver_id>[0-9]+)$', views.ReceiverDetail.as_view()),
    url(r'^users/(?P<user_id>[0-9]+)/transactions$', views.get_transactions),
    url(r'^transactions$', views.TransactionList.as_view()),
    url(r'^login/password$', views.login),
    url(r'^logout$', views.logout),
    url(r'^users$', views.register),
]
