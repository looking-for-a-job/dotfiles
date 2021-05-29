```bash
$ python3 -m gists_id
```

delete orphaned gists

```bash
$ pip install gist-delete gist-id
$ python3 -m gists_id | grep -v "$(find ~/git/gists -maxdepth 1 -exec gist-id {} \; 2> /dev/null)" | xargs gist-delete;:
```
