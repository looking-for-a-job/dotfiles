get starred repos
```python
import github_api_v3

url = "https://api.github.com/user/starred"
headers = {"Accept": "application/vnd.github.v3.star+json, application/vnd.github.mercy-preview+json"}
github_api_v3.getall(url, headers=headers)
```
