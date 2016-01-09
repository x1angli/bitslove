# -*- coding: utf-8 -*-

from django.core.management.base import BaseCommand
from blwebapp.models import User


class Command(BaseCommand):
    help = "Create a super user for new environment"

    def handle(self, *args, **options):

        user = User.objects.create(name='root', email='root@bitslove.com', phone='110', is_superuser=True)
        user.set_password('root', save=True)

        self.stdout.write("Superuser created: %s" % user)

