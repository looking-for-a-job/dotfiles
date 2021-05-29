Mixin:
```python
from django.db import models
from django_update_from_dict import update_from_dict, UpdateFromDictMixin

class ClassName(UpdateFromDictMixin,models.Model):
    ...

instance = ClassName()
instance.update_from_dict(attrs,commit=True)
```

function:
```python
from django_update_from_dict import update_from_dict

update_from_dict(instance,attrs,commit=True)
```
