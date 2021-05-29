```bash
$ gist-id <id1> <id2>
```

delete orphaned gists
```bash
$ pip install gist-id gists-id
$ python3 -m gists_id | grep -v "$(find ~/git/gists -maxdepth 1 -exec gist-id {} \; 2> /dev/null)" | xargs gist-delete;:
```
