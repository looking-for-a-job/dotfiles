```bash
$ diff="$(tar-diff archive1.tar.gz archive2.tar.gz)"
```

complicated example. bump python project version
```bash
$ dist_dir="$(mktemp -d)"
$ python setup.py sdist --dist-dir="$dist_dir" &> /dev/null
$ sdist="$(find "$dist_dir" -type f -name "*.tar.gz")"
$ url="$(python3 -m pypi_get.urls <name> | grep tar.gz)"
$ diff="$(tar-diff "$sdist" "$url")"
$ [[ -n "$diff" ]] && bumpversion
```
