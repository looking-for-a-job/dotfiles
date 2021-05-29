#!/usr/bin/env python
import os
import workout

path = "/Users/russianidiot/git/looking-for-a-job/dotfiles/django/workout/workout/staticfiles/css/custom.css"

css = """
h1.exercise {
    background-position: left;
    background-repeat: no-repeat;
}
"""

for exercise in workout.Exercise.objects.all():
    image = exercise.image
    if image:
        css = css + """
h1.exercise_%s__::before {
    content: url(../%s);
    display: inline-block;
    width: 100px;
    height: 100px;
}
a.exercise_%s__::after {
    content: url(../%s);
    width: 24px;
    height: 24px;
}

""" % (exercise.id, os.path.basename(image), exercise.id, os.path.basename(image))
open(path, "w").write(css)
