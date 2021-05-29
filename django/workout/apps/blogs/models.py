#!/usr/bin/env python
# -*- coding: utf-8 -*-
from django.contrib.auth.models import User
from django.db import models
from django.utils.translation import gettext_lazy as _


class Category(models.Model):
    class Meta:
        app_label = 'article'
        ordering = ['name']

    name = models.CharField(_('Name'), max_length=100)
    parent = models.ForeignKey('self', blank=True, null=True, on_delete=models.CASCADE)
    content = models.TextField(null=True, blank=True)

    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    created_by = models.ForeignKey(User, editable=False, related_name="%(app_label)s_%(class)s_created_by", on_delete=models.CASCADE)

    updated_by = models.ForeignKey(User, editable=False, related_name="%(app_label)s_%(class)s_updated_by", null=True, on_delete=models.CASCADE)
    updated_at = models.DateTimeField(null=True, blank=True, editable=False)

    approved_at = models.DateTimeField(editable=False, null=True)
    approved_by = models.ForeignKey(User, editable=False, related_name="%(app_label)s_%(class)s_approved", on_delete=models.CASCADE)

    @property
    def categories(self):
        return self.category_set.all()

    @property
    def articles(self):
        return self.article_set.all()

    def __str__(self):
        return '<Category id=%s "%s">' % (self.id, self.name,)

    def __repr__(self):
        return '<Category id=%s "%s">' % (self.id, self.name,)


class Article(models.Model):
    class Meta:
        app_label = 'article'
        ordering = ['-pub_date']

    category = models.ForeignKey(Category, blank=True, null=True, on_delete=models.CASCADE, verbose_name=_('Category'))
    headline = models.CharField(_('Headline'), max_length=200)
    content = models.TextField()
    pub_date = models.DateField()

    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    created_by = models.ForeignKey(User, editable=False, related_name="%(app_label)s_%(class)s_created", on_delete=models.CASCADE)

    updated_at = models.DateTimeField(null=True, blank=True, editable=False)
    updated_by = models.ForeignKey(User, editable=False, related_name="%(app_label)s_%(class)s_updated", null=True, on_delete=models.CASCADE)

    approved_at = models.DateTimeField(editable=False, null=True)
    approved_by = models.ForeignKey(User, editable=False, related_name="%(app_label)s_%(class)s_approved", on_delete=models.CASCADE)

    def __str__(self):
        return '<Article id=%s "%s">' % (self.id, self.headline,)

    def __repr__(self):
        return '<Article id=%s "%s">' % (self.id, self.headline,)


class Star(models.Model):
    class Meta:
        app_label = 'article'

    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    user = models.ForeignKey(User, editable=False, related_name="%(app_label)s_%(class)s_created", on_delete=models.CASCADE)

    def __str__(self):
        return '<Star id=%s "%s">' % (self.id, self.headline,)

    def __repr__(self):
        return '<Star id=%s "%s">' % (self.id, self.headline,)
