```python
INSTALLED_APPS+= [
    'django_storages_init'
]
```

[django-storages settings](https://django-storages.readthedocs.io/en/latest/backends/amazon-S3.html):

```python
DEFAULT_FILE_STORAGE = 'storages.backends.s3boto3.S3Boto3Storage'
AWS_ACCESS_KEY_ID = '<AWS_ACCESS_KEY_ID>'
AWS_SECRET_ACCESS_KEY = '<AWS_SECRET_ACCESS_KEY>'
AWS_STORAGE_BUCKET_NAME = '<AWS_STORAGE_BUCKET_NAME>'

# optional:
AWS_S3_REGION_NAME = 'us-east-1'
AWS_STORAGE_USER_NAME = 'BUCKET_USERNAME'
```
