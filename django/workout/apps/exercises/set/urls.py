from django.urls import path

from . import views

app_name = "set"

urlpatterns = [
    path('edit/<int:id>/', views.EditView.as_view(), name='edit'),
    path('delete/<int:id>/', views.DeleteView.as_view(), name='delete'),
]
