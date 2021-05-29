example#1 - management command:

`settings.py`
```python
INSTALLED_APPS+= ["django_createsuperuser"]
```

```bash
$ python manage.py createsuperuser --username admin --password admin
$ python manage.py createsuperuser --username admin --password admin --email foo@foo.foo
```

example#2 - python module cli:
```bash
$ export DJANGO_SETTINGS_MODULE=settings
$ python3 -m django_createsuperuser "username" "password"
$ python3 -m django_createsuperuser "username" "password" foo@foo.foo
```

