#!/usr/bin/env python
import datetime
import django
from django.http import HttpResponseRedirect
from django.http import HttpResponse
from django.shortcuts import get_object_or_404, render
import google_chrome


class View(django.views.View):
    template_name = None
    model = None

    @property
    def id(self):
        if "id" in self.kwargs:
            return self.kwargs["id"]

    @property
    def instance(self):
        if self.id:
            return get_object_or_404(self.model, pk=self.id)

    @property
    def date(self):
        date = datetime.datetime.now().date()
        if "date" in self.kwargs:
            string = self.kwargs.get("date")
            date = datetime.datetime.strptime(string, "%Y-%m-%d").date()
        return date

    @property
    def todo(self):
        date = self.date
        return bool(self.request.COOKIES.get("todo", '')) or date > date.today()

    @property
    def favorite(self):
        return bool(self.request.COOKIES.get("favorite", ''))

    def context(self):
        return {}

    def render(self, *args, **kwargs):
        context = dict(kwargs, **self.context())
        context["favorite"] = self.favorite
        context["todo"] = self.todo
        context["date"] = self.date
        return render(self.request, self.template_name, context)

    def get(self, request, *args, **kwargs):
        return self.render()

    def back(self):
        return HttpResponseRedirect(self.request.META.get('HTTP_REFERER', '/'))


def mode(request):
    key = "todo"
    response = HttpResponseRedirect(request.META.get('HTTP_REFERER', '/'))
    if not request.COOKIES.get(key, ''):
        response.set_cookie(key, 'true', max_age=9999999)
    else:
        response.set_cookie(key, '', max_age=9999999)
    return response


def favorite(request):
    key = "favorite"
    response = HttpResponseRedirect(request.META.get('HTTP_REFERER', '/'))
    if not request.COOKIES.get(key, ''):
        response.set_cookie(key, 'true', max_age=9999999)
    else:
        response.set_cookie(key, '', max_age=9999999)
    return response


def escape(request):
    # todo: browser and os detect
    # todo2: 1 escape - exit fullscreen, 2 escape - close tab
    google_chrome.fullscreen.exit()
    google_chrome.close(google_chrome.url())  # close current tab
    return HttpResponse("")
