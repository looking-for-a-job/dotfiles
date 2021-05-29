```python
>>> import slicedict

>>> medatata = dict(name="pkgname", version="1.0.0", somekey="value")
>>> slicedict.slice(medatata, ["name", "version"])
{'version': '1.0.0', 'name': 'pkgname'}
```
