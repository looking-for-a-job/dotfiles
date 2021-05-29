separate dev/prod settings:

`settings/dev.py`
```python
INSTALLED_APPS+=['webpack_loader']

WEBPACK_LOADER = {'DEFAULT':{
    'STATS_FILE': os.path.join(BASE_DIR, 'webpack-stats.dev.json')
}}
TEMPLATES[0]['OPTIONS']['builtins']=['webpack_loader.templatetags.webpack_loader']
```

`settings/prod.py`
```python
INSTALLED_APPS+=['webpack_loader_db']

WEBPACK_LOADER = {'DEFAULT':{
    'STATS_FILE': os.path.join(BASE_DIR, 'webpack-stats.prod.json')
}}
TEMPLATES[0]['OPTIONS']['builtins']=['webpack_loader_db.templatetags.webpack_loader_db']
```
