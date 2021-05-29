```python
>>> import kv_cache
>>> kv_cache.update("key",'value')
>>> kv_cache.get("key")
'value'
>>> kv_cache.exists("key")
True
>>> kv_cache.rm("key")
>>> kv_cache.clear() # clear all keys
```
