#!/usr/bin/env python
import os
import requests
import subprocess
from workout.models import Exercise

""""
1) download ~/Movies/youtube/id/name.ext
"""

CACHE_DIR = os.path.expanduser("~/Library/Caches/youtube-dl")
DIR = os.path.expanduser("~/Movies/youtube")


class Downloader:
    def __init__(self, url):
        self.url = url
        self.id = url.split("=")[1]

    @property
    def folder(self):
        return os.path.join(DIR, self.id)

    @property
    def title(self):
        url = "https://noembed.com/embed?url=%s" % self.url
        r = requests.get(url)
        return r.json()["title"]

    def download(self):
        print("download: %s" % self.url)
        args = ["youtube-dl", "--cache-dir", CACHE_DIR, "-o", self.title, self.url]
        if not os.path.exists(self.folder):
            os.makedirs(self.folder)
        subprocess.check_call(args, cwd=self.folder, stderr=subprocess.PIPE)

    @property
    def downloaded(self):
        return bool(list(self.files()))

    def files(self):
        path = os.path.join(self.folder)
        if not os.path.exists(path):
            return []
        for l in os.listdir(path):
            name, ext = os.path.splitext(l)
            if name and ext and ext != ".part" and ".f" not in ext:
                yield os.path.join(path, l)

    def run(self):
        if not self.downloaded:
            self.download()


for exercise in Exercise.objects.all():
    url = exercise.url
    Downloader(url).run()
