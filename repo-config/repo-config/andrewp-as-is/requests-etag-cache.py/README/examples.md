```python
import requests
import requests_etag_cache

r = requests.get('https://pypi.org/project/requests/')
if not requests_etag_cache.uptodate(r):
    ...
    requests_etag_cache.save(r)
```
