`yield` + `list()`
```python
>>> def func():
        yield "value"

>>> list(func())
```
`list.append()`
```python
>>> def func():
        result = []
        result.append("value")
        return result
```

`@listify`
```python
>>> @listify
    def func():
        yield "value"
```
