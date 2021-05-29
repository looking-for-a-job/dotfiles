```python
>>> import public
>>> @public.add
    def func(): pass

>>> @public.add
    class Cls: pass

>>> __all__
['Cls','func']

>>> public.add("name")
>>> public.add(*["name1","name2"])

>>> __all__
['Cls','func','name','name1','name2']
```
