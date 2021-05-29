```bash
$ find ~/git/gists -type d -mindepth 1 -maxdepth 1 -print0 | xargs -0 dir-exec command
```

execute function
```bash
func() {
    ...
}
export -f func
find ~/git/gists -type d -mindepth 1 -maxdepth 1 -print0 | xargs -0 dir-exec func
```
