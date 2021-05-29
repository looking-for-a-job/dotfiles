```python
>>> import cls
>>> class CLS:
    var = "value"
    var2 = "value"

    @property
    def prop1(self):
        pass

    @property
    def prop2(self):
        pass

>>> cls.attrs(CLS)
["var","var2"]
>>> cls.properties(CLS)
["prop1","prop2"]
```
