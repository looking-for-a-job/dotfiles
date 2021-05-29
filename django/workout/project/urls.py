"""web URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import include, path
from django.conf.urls import url
from . import views

urlpatterns = [
    path('admin/', admin.site.urls),
    url(r'^accounts/', include('registration.backends.default.urls')),
    url(r'^tinymce/', include('tinymce.urls')),
    # path('mode/', views.mode, name="mode"),
    # path('favorite/', views.favorite, name="favorite"),
    path('escape/', views.escape),
    #  path('exercise/', include('apps.exercise.urls', namespace='exercise')),
    path('articles/', include('apps.articles.urls', namespace='articles')),
    # path('blogs/', include('apps.blogs.urls', namespace='blogs')),
    path('news/', include('apps.news.urls', namespace='news')),
    path('notes/', include('apps.notes.urls', namespace='notes')),
    path('profile/', include('apps.profile.urls', namespace='profile')),
    #path('set/', include('apps.set.urls', namespace='set')),
    # path('category/', include('apps.category.urls', namespace='category')),
    path('', include('apps.frontpage.urls')),
]
