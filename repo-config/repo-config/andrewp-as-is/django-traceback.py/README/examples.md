```python
from django_traceback.utils import save_traceback
import requests
from apps.celery import celery_app

@celery_app.task
def task():
    try:
        r = requests.get('url')
    except (requests.exceptions.ConnectionError,...):
        save_traceback(__file__)
        # init task again
```
