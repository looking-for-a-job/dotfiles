#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os
from workout.models import Category, Exercise


EXCLUDE = ["__pycache__", "slideshow"]


def get_category(path):
    try:
        return Category.objects.get(folder=path)
    except Category.DoesNotExist:
        return


def get_image(path):
    for l in os.listdir(path):
        if os.path.splitext(l)[1] in [".jpg", ".png"]:
            return os.path.join(path, l)


def find_gif(path):
    for l in os.listdir(path):
        if os.path.splitext(l)[1] == ".gif":
            return os.path.join(path, l)


def create(path):
    if os.path.basename(path)[0] == "_":
        create_category(path)
    else:
        create_exercise(path)


def create_category(path):
    name = os.path.basename(path)
    name = name[1:] if name[0] == "_" else name
    parent = get_category(os.path.dirname(path))
    image = get_image(path)
    try:
        category = Category.objects.get(folder=path)
    except Category.DoesNotExist:
        category, created = Category.objects.get_or_create(name=name, parent=parent, folder=path)
    category.image = image
    category.save()


def create_exercise(path):
    name = os.path.basename(path)
    category = get_category(os.path.dirname(path))
    image = get_image(path)
    try:
        exercise = Exercise.objects.get(name=name, category=category)
    except Exercise.DoesNotExist:
        exercise, created = Exercise.objects.get_or_create(name=name, category=category)
    exercise.folder = path
    exercise.image = image
    gif = find_gif(path)
    exercise.gif_url = "file://%s".replace(" ", "%20") % gif if gif else None
    exercise.save()


top = os.path.abspath(os.path.join(os.path.dirname(__file__), "classes"))
for root, dirs, files in os.walk(top):
    for name in filter(lambda d: d not in EXCLUDE, dirs):
        path = os.path.join(root, name)
        create(path)
