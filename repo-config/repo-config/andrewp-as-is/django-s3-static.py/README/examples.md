```bash
$ python manage.py s3_static_create # create s3 bucket and policy
$ python manage.py s3_static_sync   # sync static folder with s3 bucket
```

```html
{% load static %}
<link rel="stylesheet" href="{% static "css/file.css" %}">
```
