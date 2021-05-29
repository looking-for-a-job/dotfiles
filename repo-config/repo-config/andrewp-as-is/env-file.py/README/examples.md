#### Examples
##### Django example

`.env`
```bash
DJANGO_SETTINGS_MODULE = project.settings
DJANGO_SECRETKEY = somerandomkey
DB_NAME=dbname
DB_PASS=secret
```

`manage.py`
```python
import env_file
import sys

if __name__ == "__main__":
    #  os.environ.setdefault("DJANGO_SETTINGS_MODULE", "project.settings")
    env_file.load()

    from django.core.management import execute_from_command_line

    execute_from_command_line(sys.argv)
```
