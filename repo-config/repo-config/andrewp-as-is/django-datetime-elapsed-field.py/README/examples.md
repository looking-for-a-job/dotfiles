```python
>>> from django.db import models
>>> from django_datetime_elapsed_field import DateTimeElapsedField

>>> class Example(models.Model):
        created_at = DateTimeElapsedField(auto_now_add=True)
```

```python
>>> instance = Example.objects.get(id=42)
>>> instance.created_at.elapsed
'15:26:51'
>>> int(instance.created_at.elapsed)
55611
>>> instance.created_at.elapsed.seconds
55611
>>> instance.created_at.elapsed.minutes
926
>>> instance.created_at.elapsed.hours
15
>>> instance.created_at.elapsed.days
0
```
