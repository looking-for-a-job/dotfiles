```python
>>> from self import self

>>> class CLS:
	@self
	def method(self):
		...

	@self
	def method2(self):
		...

>>> CLS().method().method2() # jQuery like chain
```
