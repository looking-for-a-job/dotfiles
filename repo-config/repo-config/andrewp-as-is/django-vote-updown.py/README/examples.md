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
from django_vote_updown.models import Vote

class ProjectVote(Vote):
    obj = models.ForeignKey('Project',related_name="+",on_delete=models.CASCADE)

    class Meta:
        db_table = 'project_vote'
        unique_together = [('obj', 'created_by')]
```

`views.py`
```python
from django.views.generic.base import TemplateView
from django_vote_updown.views import VoteDownAjaxView, VoteUpAjaxView, VoteViewMixin
from my_app.models import Project, ProjectVote

class VoteViewMixin:
    vote_model = ProjectVote

    def get_json_data(self,obj_id,is_up):
        project = Project.objects.get(id=obj_id)
        return {'is_up':is_up,'votes_up_count':project.votes_up_count,'votes_down_count':project.votes_down_count}

class VoteDownAjaxView(VoteViewMixin,VoteDownAjaxView):
    pass

class VoteUpAjaxView(VoteViewMixin,VoteUpAjaxView):
    pass

class ProjectDetailView(VoteViewMixin,TemplateView):
    template_name = 'my_app/project_detail.html'
    vote_model = ProjectVote

    def get_vote_obj(self):
        return self.project

    def vote_down_url(self):
        return '/project/vote/down/%s' % self.project.id

    def vote_up_url(self):
        return '/project/vote/up/%s' % self.project.id
```

`urls.py`

```python
urlpatterns = [
    path('down/<int:obj_id>', views.VoteDownAjaxView.as_view(),name='down'),
    path('up/<int:obj_id>', views.VoteUpAjaxView.as_view(),name='up'),
]
```

`my_app/project_detail.html`
```html
<a data-id="{{ vote_obj.pk }}" {% if request.user.is_authenticated %}data-href="{{ vote_down_url }}"{% else %}href="{% url 'login' %}?next={{ request.path }}"{% endif %}>down</a>

<a data-id="{{ vote_obj.pk }}" {% if request.user.is_authenticated %}data-href="{{ vote_up_url }}"{% else %}href="{% url 'login' %}?next={{ request.path }}"{% endif %}>up</a>
```

`vote.js`
```javascript
// your code ...
```
