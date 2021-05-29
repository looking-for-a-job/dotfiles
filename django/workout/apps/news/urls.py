from django.urls import path

from . import views

app_name = "news"

urlpatterns = [
    path('', views.NewsView.as_view(), name='index'),
    path('category/<int:id>/', views.CategoryView.as_view(), name='category'),
]
