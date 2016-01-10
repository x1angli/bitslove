# -*- coding: utf-8 -*-

from django import forms

from .models import Project, Receiver


class ProjectForm(forms.ModelForm):
    class Meta:
        model = Project
        fields = ['name', 'address', 'description', 'headcount', 'target']


class ReceiverForm(forms.ModelForm):
    class Meta:
        model = Receiver
        fields = ['name', 'address', 'gender', 'age', 'description', 'target']
