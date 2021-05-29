#!/usr/bin/env python
# -*- coding: utf-8 -*-
import datetime
from django.core.validators import MinValueValidator, MaxValueValidator
from django_datetime_elapsed_field import DateTimeElapsedField
from django.db import models
from django.utils.translation import gettext_lazy as _
from apps.exercise.models import Exercise
from django.contrib.auth.models import User


class Set(models.Model):
    class Meta:
        app_label = 'set'

    exercise = models.ForeignKey(Exercise, on_delete=models.CASCADE, verbose_name=_('Exercise'))
    kg = models.IntegerField(_('Kg'), null=True, default=0, validators=[MinValueValidator(0), MaxValueValidator(999)])
    reps = models.IntegerField(_('Reps'), null=True, default=0,
                               validators=[MinValueValidator(0), MaxValueValidator(999)])
    km = models.FloatField(_('Km'), null=True, default=0, validators=[MinValueValidator(0), MaxValueValidator(999)])
    seconds = models.IntegerField(_('Seconds'), null=True, default=0)

    description = models.CharField(_('Description'), max_length=255, blank=True)
    created_at = DateTimeElapsedField(auto_now_add=True, editable=False)
    completed_at = DateTimeElapsedField(null=True, blank=True, editable=False)
    created_by = models.ForeignKey(User, editable=False, on_delete=models.CASCADE)
    todo_at = DateTimeElapsedField(null=True, blank=True)

    def complete(self):
        self.completed_at = datetime.datetime.now()
        self.save()
        return self

    @property
    def category(self):
        return self.exercise.category

    @classmethod
    def latest(cls, exercise=None):
        try:
            if exercise:
                return cls.objects.filter(exercise=exercise).exclude(completed_at=None).latest('created_at')
            return cls.objects.latest('created_at')
        except cls.DoesNotExist:
            pass

    def __str__(self):
        return '<Set id=%s created_at="%s" todo_at="%s" completed_at="%s" exercise="%s">' % (self.id, self.created_at, self.todo_at, self.completed_at, self.exercise.name)

    def __repr__(self):
        return self.__str__()
