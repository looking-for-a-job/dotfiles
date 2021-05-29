```python
INSTALLED_APPS = ["django_summernote","github_blog","taggit"] + DJANGO_APPS

TEMPLATES[0]['OPTIONS']['context_processors']+=[
    "github_blog.context_processors.count",
    "github_blog.context_processors.username"
]

GITHUB_TOKEN="<GITHUB_TOKEN>"
GITHUB_USERNAME="<GITHUB_USERNAME>"

# optional:
GITHUB_BLOG_NEW_GIST_COUNT = 5      # 10 by default
GITHUB_BLOG_NEW_POST_COUNT = 5      # 10 by default
GITHUB_BLOG_NEW_REPO_COUNT = 5      # 10 by default
GITHUB_BLOG_POST_PAGINATE_BY = 5    # 10 by default
```
