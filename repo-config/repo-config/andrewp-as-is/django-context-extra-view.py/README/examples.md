```python
from django_context_extra_view.views import ContextExtraViewMixin

class View(ContextExtraViewMixin,...):
    context_extra = {"my_page":{"active":True}}
```

```html
{% if my_page.active %}...{% endif %}
```
