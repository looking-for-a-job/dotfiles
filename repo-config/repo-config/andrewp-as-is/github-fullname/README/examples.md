```bash
$ cd path/to/repo
$ github-fullname .
owner/repo
```

```bash
$ find ~/git -type d -mindepth 1 -maxdepth 1 -exec github-fullname {} \;
owner/repo1
SKIP (~/git/repo2): .git NOT EXISTS
owner/repo3
...
```

hide errors
```bash
$ find ~/git -maxdepth 1 -exec github-fullname {} \; 2> /dev/null
owner/repo1
owner/repo3
...
```

show github orphaned repos:
```bash
$ python3 -m github_repos | grep -v "$(find ~/git -maxdepth 1 -exec github-fullname {} \; 2> /dev/null)"
```

delete github orphaned repos:
```bash
$ python3 -m github_repos | grep -v "$(find ~/git -maxdepth 1 -exec github-fullname {} \; 2> /dev/null)" | xargs python3 -m github_delete
```
