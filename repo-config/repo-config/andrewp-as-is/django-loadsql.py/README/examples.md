variant 1:

`settings.py`
```python
INSTALLED_APPS+= ["django_loadsql"]
```

```bash
$ find . -name '*.sql' | xargs python manage.py loadsql
```


variant 2:
```bash
export DJANGO_SETTINGS_MODULE=settings.dev
find . -name '*.sql' | xargs python3 -m django_loadsql
```
