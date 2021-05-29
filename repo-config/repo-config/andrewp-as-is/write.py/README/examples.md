```python
>>> import write

>>> write.write("not-existing-folder/file",'string')
>>> open("not-existing-folder/file").read()
'string'
```
