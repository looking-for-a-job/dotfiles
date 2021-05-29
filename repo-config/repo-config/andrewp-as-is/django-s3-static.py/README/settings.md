```python
INSTALLED_APPS = [
    "django_s3_static",
]
```

`settings/dev.py`
```python
STATIC_ROOT = os.path.join(BASE_DIR, 'static')
STATIC_URL = '/static/'
```

`settings/prod.py`
```python
AWS_STATIC_ACCESS_KEY_ID = os.getenv('AWS_STATIC_ACCESS_KEY_ID')
AWS_STATIC_SECRET_ACCESS_KEY = os.getenv('AWS_STATIC_SECRET_ACCESS_KEY')
AWS_STATIC_BUCKET = os.getenv('AWS_STATIC_BUCKET')

STATIC_ROOT = os.path.join(BASE_DIR, 'static')
STATIC_URL = "https://%s.s3.amazonaws.com/" % AWS_STATIC_BUCKET
```
