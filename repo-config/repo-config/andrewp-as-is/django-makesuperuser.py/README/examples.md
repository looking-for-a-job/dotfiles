example#1 - management command:

`settings.py`
```python
INSTALLED_APPS+= ["django_makesuperuser"]
```

```bash
$ python manage.py makesuperuser --username admin --password admin
$ python manage.py makesuperuser --username admin --password admin --email foo@foo.foo
```

example#2 - python module cli:
```bash
$ export DJANGO_SETTINGS_MODULE=settings
$ python3 -m django_makesuperuser "username" "password"
$ python3 -m django_makesuperuser "username" "password" foo@foo.foo
```

