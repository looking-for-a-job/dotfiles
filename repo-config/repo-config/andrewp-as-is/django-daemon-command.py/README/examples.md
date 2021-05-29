`app/management/commands/command.py`
```python
from django_daemon_command.management.base import DaemonCommand

class Command(DaemonCommand):
    sleep = 5

    def process(self,*args,**options):
        self.log('msg') # SELECT * FROM daemon_command_log
```

```bash
$ python manage.py command
```

customize
```python
class Command(DaemonCommand):
    def handle(self, *args, **options):
        ... # init
        self.daemonize(*args, **options)

    def on_exception(self,exc):
        self.print_exception(exc)
        self.save_exception(exc)
```
