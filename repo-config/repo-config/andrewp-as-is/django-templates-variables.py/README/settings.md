```python
INSTALLED_APPS+= [
    'django_templates_variables'
]

TEMPLATES = [
    {
        # …
        'OPTIONS': {
            'context_processors': [
                'django_templates_variables.context_processors.templates_variables',
            ],
        },
    },
]
```
