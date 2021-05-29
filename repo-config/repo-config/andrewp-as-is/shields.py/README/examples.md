static badge [![](https://img.shields.io/badge/subject-status-blue.svg)]()
```python
>>> shields.Badge(subject="subject", status="status", color="blue", maxAge=3600)
'[![](https://img.shields.io/badge/subject-status-blue.svg)]()'
```

##### pypi badges

[![](https://img.shields.io/pypi/v/django.svg)](https://pypi.org/pypi/django/)
[![](https://img.shields.io/pypi/pyversions/django.svg)](https://pypi.org/pypi/django/)
[![](https://img.shields.io/pypi/l/django.svg)](https://pypi.org/pypi/django/)
[![](https://img.shields.io/pypi/wheel/django.svg)](https://pypi.org/pypi/django/)
[![](https://img.shields.io/pypi/format/django.svg)](https://pypi.org/pypi/django/)
[![](https://img.shields.io/pypi/implementation/django.svg)](https://pypi.org/pypi/django/)
[![](https://img.shields.io/pypi/status/django.svg)](https://pypi.org/pypi/django/)

```python
>>> shields.pypi.V("django")
'[![](https://img.shields.io/pypi/v/django.svg)](https://pypi.org/pypi/name/)'

>>> shields.pypi.Pyversions("django")
'[![](https://img.shields.io/pypi/pyversions/django.svg)](https://pypi.org/pypi/name/)'

>>> shields.pypi.L("django")
'[![](https://img.shields.io/pypi/l/django.svg)](https://pypi.org/pypi/name/)'
```

##### subclass

```python
>>> class New(shields.Abstract):
    path = "npm/v/{name}.svg"
    link = "https://www.npmjs.com/package/{name}"

>>> Npm(name="jquery")
'[![](https://img.shields.io/npm/v/jquery.svg)](https://www.npmjs.com/package/jquery)'
```
