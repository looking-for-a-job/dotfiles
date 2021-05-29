url(s)
```bash
$ brave urls
https://github.com/
https://google.com/
$ brave url
https://github.com/
```

open/refresh
```bash
$ brave open "https://github.com/" "https://google.com/"
$ brave refresh "https://github.com/"
```

fullscreen
```bash
$ brave fullscreen-enter
$ brave fullscreen-detect
1
$ brave fullscreen-exit
```

frontmost (`1` or `0`)
```bash
$ brave frontmost
0
```

`Brave Browser.app` process
```bash
$ brave pid
42
$ brave isready 5 # timeout 5 seconds
1
$ brave kill
```
