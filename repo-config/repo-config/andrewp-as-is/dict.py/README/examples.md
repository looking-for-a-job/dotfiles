```python
>>> from dict import dict

>>> dict(k="v")["k"]
"v"

>>>  dict(k="v").k
"v"

>>> dict(k="v")["not_existing"]
None

>>> dict(k="v").not_existing
None

>>> dict(k="v").get("K",i=True) # case insensitive
```
