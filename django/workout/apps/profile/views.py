#!/usr/bin/env python
import datetime
from django.shortcuts import redirect
from django.urls import reverse
from apps.profile.models import Profile
from apps.profile.forms import Form
from project.views import View


class ProfileView(View):
    model = Profile


class IndexView(ProfileView):
    template_name = 'profile/index.html'


class EditView(ProfileView):
    template_name = 'profile/edit.html'

    def context(self):
        form = Form(instance=self.instance)
        return dict(form=form)

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


class SaveView(ProfileView):
    def get(self, request, *args, **kwargs):
        exercise = self.instance.exercise
        self.instance.delete()
        url = reverse("exercise:index", kwargs={'id': exercise.id, 'date': self.date})
        return redirect(url)
