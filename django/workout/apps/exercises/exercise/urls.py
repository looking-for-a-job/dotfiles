from django.urls import path

from . import views

app_name = "exercise"

urlpatterns = [
    path('<int:id>/', views.IndexView.as_view(), name='index'),
    path('<int:id>/date/<slug:date>/', views.IndexView.as_view(), name='index'),
    path('add/', views.AddView.as_view(), name='add'),
    path('add/<int:id>/', views.AddView.as_view(), name='add'),
    path('edit/<int:id>/', views.EditView.as_view(), name='edit'),
    path('favorite/<int:id>/', views.FavoriteView.as_view(), name='favorite'),
    path('delete/<int:id>/', views.DeleteView.as_view(), name='delete'),
    path('delete_sets/<int:id>/', views.DeleteSetsView.as_view(), name='delete_sets'),
]
