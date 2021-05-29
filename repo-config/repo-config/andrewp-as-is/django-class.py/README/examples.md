save
```python
from django_class.models import Class
Class(module_name=cls.__module__, class_name=cls.__name__).save()
```

get module/class/instance
```python
for row in Class.objects.all():
    module = row.getmodule()
    cls = row.getclass()
```

subclassing. use `AbsClass`
```python
from django_class.models import AbsClass

class Class(AbsClass):
    ...
```
