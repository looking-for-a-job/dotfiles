`settings.py`
```python
TEMPLATES_VARIABLES = dict(
    settings = dict(
        DEBUG=DEBUG,
        VAR="VALUE"
    )
)
```

`template.html`:
```html
{% if settings.DEBUG %}
    {{ settings.VAR }}
{% endif %}
```
