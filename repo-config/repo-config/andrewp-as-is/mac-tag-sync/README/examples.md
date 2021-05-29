```bash
$ find ~/git -type d -mindepth 1 -maxdepth 1 | xargs tag-sync "repo"
$ find ~/git -type d -name "*.py" -mindepth 1 -maxdepth 1 | xargs tag-sync "py"
```
