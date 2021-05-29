#!/usr/bin/env python
import os
import webloc
from workout.models import Exercise

top = os.path.dirname(__file__)
for root, dirs, files in os.walk(top):
    for f in filter(lambda f: f.split(".")[-1] == "webloc", files):
        path = os.path.join(root, f)
        folder = os.path.dirname(path)
        print(folder)
        url = webloc.read(path)
        if "youtube.com" in url:
            youtube_id = url.split("=")[1]
            exercise = Exercise.objects.get(folder=folder)
            exercise.url = "http://youtube.local/%s" % url.split("=")[1]
            exercise.save()
