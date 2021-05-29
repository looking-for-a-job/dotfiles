```bash
$ gist-generator .
```

private gist
```bash
$ gist-generator -p .
```

create multiple gists
```bash
$ find ~/git/gists -type d -mindepth 1 -maxdepth 1 -exec gist-generator {} \;
```
