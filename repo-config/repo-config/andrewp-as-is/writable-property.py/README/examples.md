```python
>>> from writable_property import writable_property

>>> class Class:
    @writable_property
    def prop(self):
        return "value"

>>> obj = Class()
>>> obj.prop
"value"

>>> obj.prop = "new"
>>> obj.prop
"new"
```

