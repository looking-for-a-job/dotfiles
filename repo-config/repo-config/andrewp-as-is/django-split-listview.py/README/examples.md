```python
from django_split_listview.views import SplitListView

class RepoListView(SplitListView):
    def get_queryset_base(self):
        return self.model.all()

    def get_queryset_filter_kwargs(self):
        if self.request.GET.get('type','') == 'fork':
            return {'fork':True}

    def get_queryset_only_fields(self):
        return ['id','name','stargazers_count','language']

    def get_queryset_order_by_fields(self):
        if self.request.GET.get('o','') == 'stars':
            return ['-stargazers_count']
        return ['-updated_at']
```
