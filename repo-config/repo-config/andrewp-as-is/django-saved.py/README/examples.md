`settings.py`
```python
AUTH_USER_MODEL = 'users.User'
```

`users/models.py`
```python
from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
    ...
```

`my_app/models.py`
```python
from django_saved.models import Saved

class ProjectBookmark(Saved):
    obj = models.ForeignKey('Project',related_name="+",on_delete=models.CASCADE)

    class Meta:
        db_table = 'project_bookmark'
        unique_together = [('obj', 'created_by')]
```

`views.py`
```python
from django_saved.views import SavedAjaxView
from my_app.models import Project, ProjectBookmark

class ProjectBookmarkAjaxView(SavedAjaxView):
    saved_model = ProjectBookmark

    def get_json_data(self,obj_id,created):
        project = Project.objects.get(id=obj_id)
        return {'is_bookmarked':created,'bookmarks_count':project.bookmarks_count}


class ProjectDetailView:
    template_name = 'my_app/project_detail.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        project = Project.objects.get(name=self.kwargs['name'])
        context['bookmark_obj'] = project
        if self.request.user.is_authenticated:
            try:
                context['bookmark'] = ProjectBookmark.objects.get(obj_id=project.id,created_by=self.request.user)
            except ProjectBookmark.DoesNotExist:
                pass
        return context
```

`urls.py`

```python
urlpatterns = [
    path('bookmark/<int:obj_id>', views.ProjectBookmarkAjaxView.as_view(),name='bookmark'),
]
```

`my_app/project_detail.html`
```html
<a data-id="{{ bookmark_obj.pk }}" id="bookmark" {% if request.user.is_authenticated %}data-href="{% url 'bookmark' obj_id=bookmark_obj.id %}"{% else %}href="{% url 'login' %}?next={{ request.path }}"{% endif %}>bookmark</a>
```

`bookmark.js`
```javascript
// your core ...
```
