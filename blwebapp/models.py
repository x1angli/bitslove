# -*- coding: utf-8 -*-

from django.db import models


# Create your models here.


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
