#!/usr/bin/env python
from django import forms
from apps.exercise.models import Exercise


class Form(forms.ModelForm):
    class Meta:
        model = Exercise
        fields = '__all__'

    field_order = ['name', 'description', 'category']

    def __init__(self, *args, **kwargs):
        super(Form, self).__init__(*args, **kwargs)

    def hide_fields(self):
        pass
