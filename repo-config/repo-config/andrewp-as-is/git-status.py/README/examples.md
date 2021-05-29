```python
>>> import git_status
>>> git_status.get(".")
 M  path/to/modified
 A  path/to/added
 D  path/to/deleted
 R  path/to/renamed
 ?? path/to/untracked
```

`Status` class
```python
>>> status = git_status.Status(".")
>>> status.A
['path/to/added']

>>> status.M
['path/to/modified']

>>> status.D
['path/to/deleted']

>>> status.R
['path/to/renamed']

>>> status.untracked
['path/to/untracked']
```
