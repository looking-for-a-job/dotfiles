```python
import task.setup
from task.classes import Task

class Stand_up(Task):
    def todo(self):
        return not self.elapsed or self.elapsed >= 30*60
```

```bash
$ python3 -m task.scan
$ python3 -m task.update
```
