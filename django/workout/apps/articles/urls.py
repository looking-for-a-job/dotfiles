from django.urls import path

from . import views

app_name = "articles"

urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),
   # path('<int:id>/', views.View.as_view(), name='show'),
    #path('<int:id>/date/<slug:date>/', views.IndexView.as_view(), name='index'),
   # path('add/', views.AddView.as_view(), name='add'),
   # path('add/<int:id>/', views.AddView.as_view(), name='add'),
    #path('edit/<int:id>/', views.EditView.as_view(), name='edit'),
    #path('delete/<int:id>/', views.DeleteView.as_view(), name='delete'),
]
