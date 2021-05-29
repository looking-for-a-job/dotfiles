`management/commands/command.py`
```python
from django.core.management.base import BaseCommand
import django_subcommands

class SubCommand1(BaseCommand):
    def handle(self, *args, **options):
        ...

class SubCommand2(BaseCommand):
    def handle(self, *args, **options):
        ...

class Command(django_subcommands.SubCommands):
    subcommands = {"subcommand1": SubCommand1,"subcommand2":SubCommand2}
```

```bash
$ python manage.py command subcommand1
```

