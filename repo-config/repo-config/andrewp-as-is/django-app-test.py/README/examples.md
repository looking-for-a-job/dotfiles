`models.py`
```python
from django.db import models
from taggit.managers import TaggableManager

class MyModel(models.Model):
...
```

`settings.py`
```python
INSTALLED_APPS = [
    'app',
    'taggit',
    'django.contrib.auth',
    'django.contrib.contenttypes',
]

SECRET_KEY="<SECRET_KEY>"
DATABASES = {'default': {'ENGINE': 'django.db.backends.sqlite3','NAME': 'dbname'}}
```

`tests.py`
```python
from .models import MyModel
...
```
