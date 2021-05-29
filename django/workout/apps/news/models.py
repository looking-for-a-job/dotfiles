#!/usr/bin/env python
# -*- coding: utf-8 -*-
from django.contrib.auth.models import User
from django.db import models
from django.utils.translation import gettext_lazy as _
from tinymce.models import HTMLField


class Category(models.Model):
    class Meta:
        app_label = 'news'
        ordering = ['name']
        verbose_name = _('Category')
        verbose_name_plural = _('Categories')

    name = models.CharField(_('Name'), max_length=100)
    parent = models.ForeignKey('self', blank=True, null=True, on_delete=models.CASCADE)
    content = HTMLField(null=True, blank=True,)

    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    created_by = models.ForeignKey(User, editable=False, related_name="%(app_label)s_%(class)s_created_by", on_delete=models.CASCADE)

    updated_by = models.ForeignKey(User, editable=False, related_name="%(app_label)s_%(class)s_updated_by", null=True, on_delete=models.CASCADE)
    updated_at = models.DateTimeField(null=True, blank=True, editable=False)

    @property
    def categories(self):
        return self.category_set.all()

    @property
    def news(self):
        return self.news_set.all()

    def __str__(self):
        return '<News Category id=%s "%s">' % (self.id, self.name,)

    def __repr__(self):
        return '<News Category id=%s "%s">' % (self.id, self.name,)


class News(models.Model):
    class Meta:
        app_label = 'news'
        ordering = ['-pub_date']
        verbose_name = _('News')
        verbose_name_plural = _('News')

    category = models.ForeignKey(Category, blank=True, null=True, on_delete=models.CASCADE, verbose_name=_('Category'))
    headline = models.CharField(_('Headline'), max_length=255)
    content = HTMLField()
    pub_date = models.DateTimeField()

    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    updated_by = models.ForeignKey(User, related_name="%(app_label)s_%(class)s_user_updated_by", editable=False, null=True, on_delete=models.CASCADE)
    updated_at = models.DateTimeField(null=True, blank=True, editable=False)
    created_by = models.ForeignKey(User, editable=False, related_name="%(app_label)s_%(class)s_user_created_by", on_delete=models.CASCADE)
    pub_date = models.DateField()

    def __str__(self):
        return '<News id=%s "%s">' % (self.id, self.headline,)

    def __repr__(self):
        return '<News id=%s "%s">' % (self.id, self.headline,)
