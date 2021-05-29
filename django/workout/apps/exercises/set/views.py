#!/usr/bin/env python
import datetime
from django.shortcuts import redirect
from django.urls import reverse
from apps.set.models import Set
from apps.set.forms import Form
from project.classes import Options
from project.views import View


class SetView(View):
    model = Set


class EditView(SetView):
    template_name = 'set/edit.html'

    @property
    def options(self):
        instance = self.instance
        return Options(reps=instance.reps, kg=instance.kg, km=instance.km)

    def context(self):
        form = Form(instance=self.instance)
        return dict(form=form, options=self.options)

    def post(self, request, *args, **kwargs):
        form = Form(self.request.POST, instance=self.instance)
        if not form.is_valid():
            return self.render(form=form)
        instance = form.save(commit=False)
        if not self.todo:
            instance.completed_at = datetime.datetime.now()
        instance.full_clean()
        instance.save()
        url = reverse("exercise:index", kwargs={'id': self.exercise.id, 'date': self.date})
        return redirect(url)


class DeleteView(SetView):
    def get(self, request, *args, **kwargs):
        exercise = self.instance.exercise
        self.instance.delete()
        url = reverse("exercise:index", kwargs={'id': exercise.id, 'date': self.date})
        return redirect(url)
