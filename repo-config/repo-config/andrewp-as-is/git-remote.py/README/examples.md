```python
>>> import git_remote
>>> git_remote.add("github","git@github.com:owner/repo.git")
>>> git_remote.remotes()
[['github', 'git@github.com:owner/repo.git']]

>>> git_remote.names()
['github']

>>> git_remote.urls()
['git@github.com:owner/repo.git']

>>> git_remote.set_url("github","git@github.com:owner/repo2.git")
>>> git_remote.rm("github")
```
