dev
```bash
$ python manage.py add_constraints # manage.py add_constraints app1 app2 ...
$ python manage.py drop_constraints # manage.py drop_constraints app1 app2 ...
```

prod
```bash
$ ssh user@hostname sudo docker run --env-file .env image python manage.py add_constraints
$ ssh user@hostname sudo docker run --env-file .env image python manage.py drop_constraints
```

`models.py`

```python
class Model1(models.Model):
    name = models.TextField(unique=True)
    obj = models.ForeignKey('Obj',related_name='+',on_delete=models.SET_NULL)

    class Meta:
        db_table = '<db_table>'
        managed=False

class Model2(models.Model):
    user = models.ForeignKey('User',related_name='+',on_delete=models.SET_NULL)
    obj = models.ForeignKey('Obj',related_name='+',on_delete=models.SET_NULL)

    class Meta:
        db_table = '<db_table>'
        managed=False
        unique_together = [('user', 'obj',)]
```
