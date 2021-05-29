```python
INSTALLED_APPS = [
    "django_s3_templates",
]

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR,"templates")],
        ...
    },
]

AWS_S3_TEMPLATES_ACCESS_KEY_ID = os.getenv("AWS_S3_TEMPLATES_ACCESS_KEY_ID")
AWS_S3_TEMPLATES_SECRET_ACCESS_KEY = os.getenv("AWS_S3_TEMPLATES_SECRET_ACCESS_KEY")
AWS_S3_TEMPLATES_BUCKET = os.getenv("AWS_S3_TEMPLATES_BUCKET")
AWS_S3_TEMPLATES_PATH = os.path.join(BASE_DIR,"templates")
```
