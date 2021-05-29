#!/usr/bin/env python
import datetime
from django.http import HttpResponseRedirect
from django.shortcuts import get_object_or_404, redirect
from apps.articles.models import Article, Category
from project.views import View
from . import forms


class CategoryView(View):
    model = Category


class IndexView(View):
    template_name = 'category/index.html'

    @property
    def category(self):
        if "id" in self.kwargs:
            return Category.objects.get(id=self.kwargs["id"])

    @property
    def exercises(self):
        exercises = Exercise.objects.all()
        if self.favorite:
            exercises = exercises.filter(favorite=self.favorite).all()
        if self.category:
            exercises = exercises.filter(category=self.category).all()
        exercises = sorted(exercises, key=lambda e: sort_by(e))
        return exercises
        # return exercises.order_by('-category', 'name').all()

    @property
    def orphaned_categories(self):
        if self.category:
            return []
        categories = []
        for category in Category.objects.all():
            if not category.categories and not category.exercises:
                categories.append(category)
        return categories

    @property
    def days(self):
        today = datetime.date.today()
        monday = today + datetime.timedelta(days=-today.weekday())
        result = []
        for n in range(0, 7):
            result.append(monday + datetime.timedelta(days=n))
        return result

    def context(self):
        return dict(exercises=self.exercises, days=self.days, category=self.category, orphaned_categories=self.orphaned_categories)


class AddView(View):
    template_name = 'category/add.html'

    def context(self):
        instance = Category()
        if "id" in self.kwargs:
            instance.parent = get_object_or_404(Category, pk=self.kwargs["id"])
        form = forms.Form(instance=instance)
        return dict(form=form)

    def post(self, request, *args, **kwargs):
        form = forms.Form(self.request.POST)
        if not form.is_valid():
            return self.render(form=form)
        category = form.save(commit=False)
        category.full_clean()
        category.created_by = self.request.user
        category.save()
        return redirect(category)


class EditView(CategoryView):
    template_name = 'category/edit.html'

    def context(self):
        form = forms.Form(instance=self.instance)
        return dict(form=form)

    def post(self, request, *args, **kwargs):
        form = forms.Form(self.request.POST, instance=self.instance)
        if not form.is_valid():
            return self.render(form=form)
        instance = form.save(commit=False)
        instance.full_clean()
        instance.save()
        return redirect(instance)


class DeleteView(CategoryView):
    def delete(self):
        parent = self.instance.parent
        self.instance.delete()
        if parent:
            return redirect(parent)
        return HttpResponseRedirect("/")

    def get(self, request, *args, **kwargs):
        return self.delete()
