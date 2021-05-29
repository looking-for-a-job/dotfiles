#!/usr/bin/env python
# from django.conf import settings
import glob
try:
    import importlib
except ImportError:
    import imp
import inspect
import os
import public

""""
settings.py:
import django_settings_files

cd path/to/project
site/settings.py         # project settings.py
settings/*.py            # default location

functions:
django_settings_files.include("folder/")
django_settings_files.files()
django_settings_files.read()
django_settings_files.init()
django_settings_files.include()
django_settings_files.data(module)

customize:
django_settings_files.load()
"""


def fullpath(path):
    return os.path.abspath(os.path.expanduser(path))


def get(*path):
    _settings = dict()
    for _path in path:
        if "*" in _path:  # wildcard:
            _files = glob.glob(f)
            _data = include(*files)
            _settings.update(_data)
        if os.path.exists(_path) and os.path.isfile(_path):
            module = load(_path)
            _settings.update(data(module))
        if os.path.exists(_path) and os.path.isfile(_path):
            _files = files(_path)
            _data = include(*files)
            _settings.update(_data)
    return _settings


def include(*path):
    """include settins file(s), folder, wildcard pattern"""
    _data = get(*path)
    settings.configure(_data)


@public.add
def files(path):
    """return a list of python files"""
    path = fullpath(path)
    result = []
    for root, dirs, files in os.walk(path, followlinks=True):
        for f in files:
            if os.path.splitext(f)[1] == ".py" and f[0] != ".":
                result.append(os.path.join(root, f))
    return result


@public.add
def load(path):
    """load module and return its object"""
    name = path
    try:
        return importlib.machinery.SourceFileLoader(name, path).load_module()
    except NameError:
        return imp.load_source(name, path)


@public.add
def data(module):
    """return a module settings dict"""
    _settings = dict()
    for k, v in module.__dict__.items():
        if k == k.upper() and k[0] != "_":
            _settings[k] = v
    return _settings


@public.add
def init():
    """find and include settings files"""
    """previous frame (settings.py?)"""
    scope = inspect.stack()[7][0].f_globals
    _files = []
    folders = ["settings"]
    for folder in folders:
        if os.path.exists(folder) and os.path.isdir(folder):
            _files += list(files(folder))
    for f in _files:
        with open(f, 'rb') as to_compile:
            exec(compile(to_compile.read(), f, 'exec'), scope)


init()
