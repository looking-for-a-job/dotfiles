#!/usr/bin/env python
# -*- coding: utf-8 -*-
from django_datetime_elapsed_field import DateTimeElapsedField
from django.db import models
from django.utils.translation import gettext_lazy as _
from apps.category.models import Category
from django.contrib.auth.models import User


class Exercise(models.Model):
    class Meta:
        app_label = 'exercise'
        ordering = ['-category', 'name']

    name = models.CharField(_('Name'), max_length=100)
    category = models.ForeignKey(Category, on_delete=models.CASCADE, null=True, blank=True, verbose_name=_('Category'))

    content = models.TextField(blank=True, null=True)

    created_at = DateTimeElapsedField(auto_now_add=True, editable=False)
    created_by = models.ForeignKey(User, editable=False, on_delete=models.CASCADE)

    @property
    def sets(self):
        return self.set_set.all()

    def __str__(self):
        return '<Exercise id=%s "%s">' % (self.id, self.name)

    def __repr__(self):
        return self.__str__()


class Star(models.Model):
    class Meta:
        app_label = 'exercise'

    exercise = models.ForeignKey(Exercise, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
    user = models.ForeignKey(User, editable=False, related_name="%(app_label)s_%(class)s_created", on_delete=models.CASCADE)

    def __str__(self):
        return '<Star id=%s "%s">' % (self.id, self.user)

    def __repr__(self):
        return '<Star id=%s "%s">' % (self.id, self.user)
