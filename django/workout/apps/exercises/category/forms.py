#!/usr/bin/env python
import django
from apps.category.models import Category


class Form(django.forms.ModelForm):
    class Meta:
        model = Category
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super(Form, self).__init__(*args, **kwargs)

    def hide_fields(self):
        pass
