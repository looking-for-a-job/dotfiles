```python
>>> import github_octolytics
>>> github_octolytics.get('https://github.com/django/django')
{'octolytics-host': 'collector.githubapp.com', 'octolytics-app-id': 'github', 'octolytics-event-url': 'https://collector.githubapp.com/github-external/browser_event', 'octolytics-dimension-request_id': '6C86:1AB6A:1553F2A:20148E0:5DB5986A', 'octolytics-dimension-region_edge': 'ams', 'octolytics-dimension-region_render': 'iad', 'octolytics-dimension-ga_id': '', 'octolytics-dimension-visitor_id': 6848789782742800491, 'octolytics-dimension-user_id': 27804, 'octolytics-dimension-user_login': 'django', 'octolytics-dimension-repository_id': 4164482, 'octolytics-dimension-repository_nwo': 'django/django', 'octolytics-dimension-repository_public': True, 'octolytics-dimension-repository_is_fork': False, 'octolytics-dimension-repository_network_root_id': 4164482, 'octolytics-dimension-repository_network_root_nwo': 'django/django', 'octolytics-dimension-repository_explore_github_marketplace_ci_cta_shown': False}

```

```python
>>> import requests
>>> r = requests.get('https://github.com/django/django')
>>> github_octolytics.parse(r.text)
{...}
```
