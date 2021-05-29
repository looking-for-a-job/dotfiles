```bash
$ git remote add github git@github.com:owner/repo.git
$ python3 -m github_name .
owner/repo
$ python3 -m github_name . | awk -F"/" '{print $1}'
owner
$ python3 -m github_name . | awk -F"/" '{print $2}'
repo
```

```python
>>> import github_name
>>> github_name.get()
'owner/repo'
```

print repo name for every repo:
```bash
$ find ~/git -type d -mindepth 1 -maxdepth 1 -exec python3 -m github_name {} \;
```
