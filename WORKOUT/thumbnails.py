#!/usr/bin/env python
import os
import subprocess
import webloc

top = os.path.dirname(__file__)
for root, dirs, files in os.walk(top):
    for f in filter(lambda f: f.split(".")[-1] == "webloc", files):
        youtube_id = webloc.read(os.path.join(root, f)).split("=")[1]
        url = "https://img.youtube.com/vi/%s/mqdefault.jpg" % youtube_id
        args = ["curl", "-s", "-o", os.path.join(root, "mqdefault.jpg"), url]
        subprocess.check_call(args)
