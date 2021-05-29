create Finder alias
```bash
$ finder-alias ~/Downloads ~/Downloads2
```

read/write Finder comment
```bash
$ finder-comment path "comment value"
$ finder-comment path
comment value
```

set Finder icon
```bash
$ finder-icon path image.png
```

```bash
$ finder-reveal ~/git
```

get Finder selection
```bash
$ finder-selection
/Users/username/Desktop
/Users/username/Downloads
```

execute command from every selected Finder directory
```bash
$ finder-exec python setup.py install
```

frontmost (`1` or `0`)
```bash
$ finder-frontmost
0
```
