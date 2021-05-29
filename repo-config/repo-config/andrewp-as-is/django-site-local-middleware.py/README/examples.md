`settings.py`

```python
DEBUG=True

MIDDLEWARE = [
    ...
    'django_site_local_middleware.middleware.SiteLocalMiddleware'
    ...
]
```

`/etc/hosts`
```
127.0.0.1   site.com.local
```


```bash
$ python manage.py runserver 0.0.0.0:8000
```

before|after
-|-
`<a href="http://site.com/">`|`<a href="http://site.com.local:8000/">`

