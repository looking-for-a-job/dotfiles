```python
>>> import orderdict

>>> metadata = dict(version="1.0.0", name="pkgname")
{'version': '1.0.0', 'name': 'pkgname'}

>>> orderdict.order(["name", "version"], metadata)
OrderedDict([('name', 'pkgname'), ('version', '1.0.0')])
```
