`@cached` decorator

```python
>>> from cached import cached

>>> @cached
    def func(*args, **kwags):
```

`cached(function)` function
```python
>>> from cached import cached

>>> def func(*args, **kwags):
        ...
>>> cached(func)()
```
