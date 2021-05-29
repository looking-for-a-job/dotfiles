```bash
$ python -u manage.py import-repos
$ python -u manage.py import-starred-repos
$ python -u manage.py import-gists
$ python -u manage.py import-starred-gists
```

`views.py`
```python
from django_github_user.models import Gist, Repo, StarredGist, StarredRepo


class View:
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["repos"] = Repo.objects.filter(full_name__contains=settings.GITHUB_USERNAME).filter(fork=False).filter(private=False).all()
        context["starred_repos"] = StarredRepo.objects.filter(private=False).all()
        context["gists"] = Gist.objects.filter(public=True).all()
        context["starred_gists"] = StarredGist.objects.filter(public=True).all()
        return context


```

`index.html`
```html
{% for repo in repos %}
    <h3><a href="{{ repo.html_url }}">{{repo.name}}</a></h3>
    <div class="tags">
    {% for topic in repo.topics.all %}
        <a class="topic-tag topic-tag-link f6" href="#">{{ topic.name }}</a>
    {% endfor % }
    </div>
{% endfor %}
```
