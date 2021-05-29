#!/usr/bin/env python
# -*- coding: utf-8 -*-
from django.contrib.auth.models import User
from django.db import models
from django.utils.translation import gettext_lazy as _


class Category(models.Model):
    class Meta:
        app_label = 'category'
        ordering = ['name']

    name = models.CharField(_('Name'), max_length=100)
    parent = models.ForeignKey('self', blank=True, null=True, on_delete=models.CASCADE)
    content = models.TextField(blank=True, null=True)

    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    updated_by = models.ForeignKey(User, editable=False, related_name="%(app_label)s_%(class)s_user_updated_by", null=True, on_delete=models.CASCADE)
    updated_at = models.DateTimeField(null=True, blank=True, editable=False)
    created_by = models.ForeignKey(User, editable=False, related_name="%(app_label)s_%(class)s_user_created_by", on_delete=models.CASCADE)

    @property
    def categories(self):
        return self.category_set.all()

    @property
    def exercises(self):
        return self.exercise_set.all()

    def __str__(self):
        return '<Category id=%s "%s">' % (self.id, self.name,)

    def __repr__(self):
        return '<Category id=%s "%s">' % (self.id, self.name,)
