`urls.py`
```python
from django.contrib import admin
from github_blog.urls import github_blog_urls

urlpatterns = [
    path('admin/', admin.site.urls),
    path('summernote/', include('django_summernote.urls')),
]+ github_blog_urls
```

```bash
$ python -u manage.py collect_github
```

static site generator:
```bash
$ github-blog-clean path/to/<username>.github.com # remove .html files
$ python -u manage.py staticgen <ip:port> path/to/<username>.github.com # generate .html files
$ github-blog-push path/to/<username>.github.com # push to github
```
