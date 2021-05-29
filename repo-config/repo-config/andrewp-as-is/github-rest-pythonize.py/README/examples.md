```python
>>> import github_rest_pythonize
>>> import requests
>>> r = requests.get('https://api.github.com/users/google')
>>> github_rest_pythonize.pythonize(r.json())['created_at']
datetime.datetime(2012, 1, 17, 21, 30, 18, tzinfo=<UTC>)
```
