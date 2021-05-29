example #1: cache psql queries
```bash
$ value="$(exec-cache psql -At -c "SELECT ..." dbname)"
```

example #2: clear cache

```bash
$ export EXEC_CACHE=~/.cache/exec-cache/psql # custom folder
$ rm -fr "$EXEC_CACHE"
$ value="$(exec-cache psql -At -c "SELECT ..." dbname)"
```
