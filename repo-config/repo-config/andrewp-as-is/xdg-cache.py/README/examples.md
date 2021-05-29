```python
>>> import xdg_cache
>>> xdg_cache.write("key",'value')
>>> xdg_cache.read("key")
'value'
>>> xdg_cache.path("key")
'~/.cache/key'
>>> xdg_cache.exists("key")
True
>>> xdg_cache.rm("key")
```
