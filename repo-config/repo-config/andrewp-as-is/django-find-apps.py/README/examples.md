`settings.py`
```python
import django_find_apps

INSTALLED_APPS = django_find_apps.find_apps("apps")
```

```
apps
├── app1
|   ├── __init__.py
|   └── models.py
├── app2
|   ├── __init__.py
|   └── templatetags
└── app3
    ├── __init__.py
    └── management
```
