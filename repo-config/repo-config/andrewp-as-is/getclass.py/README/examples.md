```python
>>> from getclass import getclass

>>> class CLS:
    def method(self): pass

    @property
    def property(self): pass

    @classmethod
    def classmethod(cls,x): pass

    @staticmethod
    def staticmethod(x): pass

    def __str__(self): pass

>>> getclass(CLS())
<class __main__.CLS>

>>> getclass(CLS.method)
<class __main__.CLS>

>>> getclass(CLS.property)
<class __main__.CLS>

>>> getclass(CLS.classmethod)
<class __main__.CLS>

>>> getclass(CLS.staticmethod)
<class __main__.CLS>
```
