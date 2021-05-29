url(s)
```bash
$ opera urls
https://github.com/
https://google.com/
$ opera url
https://github.com/
```

open/refresh
```bash
$ opera open "https://github.com/" "https://google.com/"
$ opera refresh "https://github.com/"
```

fullscreen
```bash
$ opera fullscreen-enter
$ opera fullscreen-detect
1
$ opera fullscreen-exit
```

frontmost (`1` or `0`)
```bash
$ opera frontmost
0
```

`Opera.app` process
```bash
$ opera pid
42
$ opera isready 5 # timeout 5 seconds
1
$ opera kill
```
