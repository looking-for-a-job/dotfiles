#!/usr/bin/env python
# -*- coding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import User


class Profile(models.Model):
    class Meta:
        app_label = 'profile'

    user = models.OneToOneField(User, on_delete=models.CASCADE)
    location = models.CharField(max_length=140)
    gender = models.CharField(max_length=140)
    profile_picture = models.ImageField(upload_to='thumbpath', blank=True)

    def __str__(self):
        return 'Profile of user: %s' % self.user.username
