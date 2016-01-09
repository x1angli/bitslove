# -*- coding: utf-8 -*-

from django.core.management.base import BaseCommand
from blwebapp.models import User


class Command(BaseCommand):
    help = "Create a user for new environment"

    def handle(self, *args, **options):

        user = User.objects.create(name='initial_user', email='initial_user@bitslove.com', phone='119')
        user.set_password('initial_user', save=True)

        self.stdout.write("A user created: %s" % user)


