#!/usr/bin/env python
import django
from apps.articles.models import Article


class Form(django.forms.ModelForm):
    class Meta:
        model = Article
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super(Form, self).__init__(*args, **kwargs)

    def hide_fields(self):
        pass
