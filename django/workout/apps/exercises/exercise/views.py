#!/usr/bin/env python
import datetime
from django.shortcuts import get_object_or_404, redirect
from django.template.loader import render_to_string
from django.urls import reverse
from apps.category.models import Category
from apps.exercise.models import Exercise
from apps.set.models import Set
from apps.set.forms import Form
from project.classes import Options
from project.views import View
from . import forms


class ExerciseView(View):
    model = Exercise

    def redirect(self):
        url = reverse("exercise:index", kwargs={'id': self.id, 'date': self.date})
        return redirect(url)


class Sets:
    template_name = "exercise/day.html"

    def __init__(self, date, exercise):
        self.date = date
        self.exercise = exercise
        sets = Set.objects.filter(exercise=exercise)
        completed = sets.filter(completed_at__date=date).all()
        todo = sets.filter(todo_at__date=date).all()
        self.sets = (completed | todo).order_by('created_at', 'todo_at')
        self.count = len(self.sets)
        self.reps = sum(map(lambda s: s.reps, self.sets))
        self.weight = sum(map(lambda s: s.reps * s.kg, self.sets))

    @property
    def reps_todo(self):
        return sum(map(lambda s: s.reps, filter(lambda s: not s.completed_at, self.sets)))

    @property
    def rep_done(self):
        sets = self.sets
        return sum(map(lambda s: s.reps, filter(lambda s: s.completed_at, sets)))

    @property
    def todo(self):
        return bool(self.reps_todo)

    def render(self):
        context = dict(data=self)
        return render_to_string(self.template_name, context)


class IndexView(ExerciseView):
    template_name = 'exercise/index.html'

    @property
    def exercise(self):
        return Exercise.objects.get(id=self.kwargs["id"])

    @property
    def days(self):
        today = datetime.date.today()
        monday = today + datetime.timedelta(days=-today.weekday())
        result = []
        for n in range(0, 7):
            day = monday + datetime.timedelta(days=n)
            result.append(day)
        return result

    @property
    def latest(self):
        try:
            return Set.objects.filter(exercise=self.exercise, todo=False).latest('created_at')
        except Set.DoesNotExist:
            pass

    @property
    def options(self):
        latest = Set(reps=42, exercise=self.exercise)
        sets = Set.objects.all()
        try:
            latest = sets.filter(exercise=self.exercise).latest('created_at')
        except Set.DoesNotExist:
            category = self.exercise.category
            while category:
                try:
                    latest = sets.filter(exercise__in=category.exercises).latest('created_at')
                    break
                except Set.DoesNotExist:
                    category = category.parent
        return Options(reps=latest.reps, kg=latest.kg, km=latest.km)

    @property
    def form(self):
        sets = Set.objects.filter(exercise=self.exercise)
        if not self.todo:
            todo_sets = sets.filter(todo_at__date=self.date, completed_at=None).order_by('created_at')
            if todo_sets:
                return Form(instance=todo_sets[0])
        try:
            instance = sets.latest('created_at')
        except Set.DoesNotExist:
            instance = Set(exercise=self.exercise)
        instance.pk = None
        instance.completed_at = None
        instance.todo_at = None
        return Form(instance=instance)

    def context(self):
        return dict(days=self.days, exercise=self.exercise, category=self.exercise.category, form=self.form, options=self.options)

    def get(self, request, *args, **kwargs):
        self.exercise.visit()
        return self.render()

    def post(self, request, *args, **kwargs):
        form = Form(self.request.POST)
        if not form.is_valid():
            return self.render(form=form)
        instance = form.save(commit=False)
        time = datetime.datetime.min.time()
        dt = datetime.datetime.combine(self.date, time)
        if self.todo:
            instance.todo_at = dt
        else:
            instance.completed_at = dt
        instance.full_clean()
        instance.save()
        return self.redirect()


class AddView(ExerciseView):
    template_name = 'exercise/add.html'

    def context(self):
        instance = Exercise()
        if "id" in self.kwargs:
            instance.category = get_object_or_404(Category, pk=self.kwargs["id"])
        form = forms.Form(instance=instance)
        return dict(form=form)

    def post(self, request, *args, **kwargs):
        form = forms.Form(self.request.POST)
        if not form.is_valid():
            return self.render(form=form)
        exercise = form.save(commit=False)
        exercise.full_clean()
        exercise.save()
        return self.redirect()


class EditView(ExerciseView):
    template_name = 'exercise/edit.html'

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
        return self.redirect()


class FavoriteView(ExerciseView):
    def get(self, request, *args, **kwargs):
        instance = self.instance
        instance.favorite = not self.instance.favorite
        instance.save()
        return self.back()


class DeleteView(ExerciseView):
    def get(self, request, *args, **kwargs):
        if len(self.instance.sets) > 0:
            return self.back()
        category = self.instance.category
        self.instance.delete()
        url = reverse("category:index", kwargs={'date': self.date})
        if category:
            url = reverse("category:index", kwargs={'id': category.id, 'date': self.date})
        return redirect(url)


class DeleteSetsView(EditView):
    def get(self, request, *args, **kwargs):
        Set.objects.filter(exercise=self.instance).delete()
        return self.redirect()
