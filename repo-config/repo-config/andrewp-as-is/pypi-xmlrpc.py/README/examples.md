`user_packages(user)` `[(role,name),...]`
```python
>>> packages = pypi_xmlrpc.user_packages("kennethreitz") # user packages
>>> for role, name in packages:
```

`package_releases(name)`
```python
>>> pypi_xmlrpc.package_releases("requests")
['x.y.z',..., '0.0.1']
```

`package_roles(name)` `[(role,name),...]`
```python
>>> pypi_xmlrpc.package_roles("requests")
[('role','username'),...]
```

`release_data(name,version)`
```python
>>> pypi_xmlrpc.release_data("requests","x.y.z")
{'name': 'requests',...}
```


`release_urls(name,version)`
```python
>>> pypi_xmlrpc.release_urls("requests","x.y.z")
[...]
```
