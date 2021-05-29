```python
INSTALLED_APPS = [
    "webpack_loader_db",
]

WEBPACK_LOADER = {'DEFAULT':{
    'STATS_FILE': os.path.join(BASE_DIR, 'webpack-stats.prod.json')
}}
```
