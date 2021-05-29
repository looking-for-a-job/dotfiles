```python
>>> from accepts import accepts
>>> @accepts(int)
def inc(value):
	return value+1

>>> inc(1) # ok

# multiple types
>>> @accepts((int,float))
>>> inc(1.5) # ok
>>> inc("string")
TypeError: inc() argument #0 is not instance of (<class 'int'>, <class 'float'>)

# None
>>> @accepts((int,float,type(None)))
```
