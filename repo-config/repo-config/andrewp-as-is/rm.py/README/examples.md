```python
>>> import rm

>>> rm.rm("path/to/file")  # rm file
>>> rm.rm("path/to/dir")  # rm dir
>>> rm.rm(["path/to/dir","path/to/file"])  # rm multiple paths
>>> rm.rm("not-existing") # no exception
```
