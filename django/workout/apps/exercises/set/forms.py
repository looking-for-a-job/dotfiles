#!/usr/bin/env python
from django import forms
from apps.set.models import Set


class Form(forms.ModelForm):
    class Meta:
        model = Set
        fields = '__all__'
        field_order = ['reps', 'kg', 'km']

    def __init__(self, *args, **kwargs):
        super(Form, self).__init__(*args, **kwargs)
        self.hide_fields()

    def hide_fields(self):
        self.fields['description'].widget.attrs.update({'size': 20, 'maxsize': 20})
        self.fields['reps'].widget.attrs.update({'autofocus': 'autofocus', 'size': 3, 'maxsize': 3, 'min': '0'})
        self.fields['kg'].widget.attrs.update({'size': 3, 'maxsize': 3, 'min': '0'})
        self.fields['km'].widget.attrs.update({'size': 3, 'maxsize': 3, 'min': '0'})
        self.fields['seconds'].widget.attrs.update({'size': 5, 'maxsize': 5, 'min': '0'})

        self.fields['exercise'].widget = forms.HiddenInput()
        if not bool(self.instance.description):
            self.fields['description'].widget = forms.HiddenInput()
        self.fields['seconds'].widget = forms.HiddenInput()
        self.fields['todo_at'].widget = forms.HiddenInput()
