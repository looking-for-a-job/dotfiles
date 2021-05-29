`settings.py`
```python
INSTALLED_APPS = [
    ...
    'django_template_url_optional',
    ...
]
```


```html
{% load url_optional %}

<a href="{% url_optional 'item_list' variable %}">
<a href="{% url_optional 'item_list' %}">
```

`urls.py`
```python
urlpatterns = [
    path('<str:name>/', views.ItemListView.as_view(),name='item_list'),
    path('', views.ItemListView.as_view(),name='item_list'),
]
```
