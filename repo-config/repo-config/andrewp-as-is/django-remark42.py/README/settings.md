```python
INSTALLED_APPS+= [
    'django_remark42'
]

REMARK42_HOST=os.getenv('REMARK42_HOST')
REMARK42_SITE_ID=os.getenv('REMARK42_SITE_ID')
# optional:
REMARK42_MAX_SHOWN_COMMENTS=os.getenv('REMARK42_MAX_SHOWN_COMMENTS') # 15 by default
REMARK42_THEME=os.getenv('REMARK42_THEME') # 'light' by default
```
