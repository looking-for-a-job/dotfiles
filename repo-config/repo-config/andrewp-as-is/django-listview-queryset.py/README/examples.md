`ListViewQuerySet`

```python
from django_listview_queryset import ListViewQuerySet

class Name(models.Model):
    objects = ListViewQuerySet.as_manager()
```
```python
q = Name.objects.filter().order_by().setcount(42)
```

`ListViewRawQuerySet`

```python
from django_listview_queryset import ListViewRawQuerySet

class Name(models.Model):
    objects = ListViewRawQuerySet.as_manager()
```
```python
q = Name.objects.raw('select * from table').setcount(42)
```
