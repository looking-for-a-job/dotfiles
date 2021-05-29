set directories
```bash
# ~/git/owner/repo
$ find ~/git -type d -maxdepth 2 | execdir set all
$ find ~/git -name "setup.py" -maxdepth 3 | sed 's#/[^/]*$##' | execdir set pypi
$ find ~/git -name "package.json" -maxdepth 3 | sed 's#/[^/]*$##' | execdir set npmjs
$ find ~/git -name ".travis.yml" -maxdepth 3 | sed 's#/[^/]*$##' | execdir set travis
```

run command
```bash
$ execdir run pypi python setup.py sdist upload
$ execdir run npmjs npm publish
```
