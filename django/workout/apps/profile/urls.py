from django.contrib.auth.decorators import login_required
from django.urls import path


from . import views

app_name = "profile"

urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),
    path('edit/<int:id>/', views.EditView.as_view(), name='edit'),
    path('save/<int:id>/', views.SaveView.as_view(), name='save'),
]
