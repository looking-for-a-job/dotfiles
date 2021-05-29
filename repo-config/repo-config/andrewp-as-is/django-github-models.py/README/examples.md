```python
from django_github_models.models import Repo as _Repo
from taggit.managers import TaggableManager
from taggit.models import TaggedItemBase

class RepoTopic(TaggedItemBase):
    content_object = models.ForeignKey(
        'Repo',
        related_name='tagged_items',
        on_delete=models.CASCADE
    )

class Repo(_Repo):
    topics = TaggableManager(through=RepoTopic, blank=True)
```
