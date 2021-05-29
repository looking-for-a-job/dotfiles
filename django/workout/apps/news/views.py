#!/usr/bin/env python
import datetime
from django.shortcuts import redirect
from django.urls import reverse
from apps.news.models import Category, News
from project.views import View


class NewsView(View):
    model = News


class CategoryView(View):
    pass


class IndexView(NewsView):
    template_name = 'news/index.html'


class EditView(NewsView):
    template_name = 'news/edit.html'

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


class DeleteView(NewsView):
    def get(self, request, *args, **kwargs):
        self.instance.delete()
        url = reverse("news:index")
        return redirect(url)
