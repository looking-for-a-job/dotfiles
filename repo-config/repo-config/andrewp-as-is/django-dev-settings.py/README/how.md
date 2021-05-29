create **global** settings module with:

+   UPPERCASE variables
+   `onload()` function

load **global** settings in project dev settings:
```python
import django_dev_settings

django_dev_settings.load()
```

export `DJANGO_DEV_SETTINGS_MODULE` environment variable

