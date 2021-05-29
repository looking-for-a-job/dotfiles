`.env`
```python
DB_NAME="name"
...
```

`settings.py`
```python
import import_env_file
import os

DATABASES = {
    'default': {
        'NAME': os.getenv('DB_NAME'),
    }
}
```
