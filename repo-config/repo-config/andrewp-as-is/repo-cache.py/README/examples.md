```bash
$ path="$(repo-cache)"/requirements.txt
~/.cache/repo-cache/<repo-sha1>/requirements.txt
$ pipreqs --ignore tests --print . > "$path"
$ ln -fs "$path" requirements.txt
```

```bash
$ ln -fs "$(repo-cache)" .cache # symlink cache folder for debug
$ echo "/.cache" >> ~/.gitignore
```
