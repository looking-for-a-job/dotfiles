```python
>>> import growlnotify
>>> growlnotify.notify(t="title",m="message")           # -t "title" -m "message"
>>> growlnotify.notify(title="title",message="message") # --title "title" --message "message"
```

`-s`, `--sticky`
```python
>>> growlnotify.notify(title="title",s=True)       # -s
>>> growlnotify.notify(title="title",sticky=True)  # --sticky
```

growlnotify keys
```bash
$ growlnotify --help
```
