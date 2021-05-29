`site-packages/django_settings/dev.py`:
```python
import os
import sys

def load():
    settings_module = sys.modules[os.getenv('DJANGO_SETTINGS_MODULE')]
    settings_module.MIDDLEWARE+=[
        'debug_toolbar.middleware.DebugToolbarMiddleware',
    ]
    for app in [
        'debug_toolbar',
        ...
    ]:
        if app not in settings_module.INSTALLED_APPS:
            settings_module.INSTALLED_APPS.append(app)

DEBUG_TOOLBAR_PANELS = [
    'debug_toolbar.panels.versions.VersionsPanel',
    ...
]
```

```bash
$ export DJANGO_DEV_SETTINGS_MODULE=django_settings.dev
$ python manage.py <command>
```
