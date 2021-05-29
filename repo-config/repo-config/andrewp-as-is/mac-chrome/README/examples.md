url(s)
```bash
$ chrome urls
https://github.com/
https://google.com/
$ chrome url
https://github.com/
```

open/refresh
```bash
$ chrome open "https://github.com/" "https://google.com/"
$ chrome refresh "https://github.com/"
```

fullscreen
```bash
$ chrome fullscreen-enter
$ chrome fullscreen-detect
1
$ chrome fullscreen-exit
```

frontmost (`1` or `0`)
```bash
$ chrome frontmost
0
```

`Google Chrome.app` process
```bash
$ chrome pid
42
$ chrome isready 5 # timeout 5 seconds
1
$ chrome kill
```
