```python
import django_standalone_setup
from django_path.models import Category, Path

for f in files:
    cat_name = os.path.basename(os.path.dirname(f))
    category, _ = Category.objects.get_or_create(name=cat_name)
    Path.objects.get_or_create(path=f, category=category)
```
