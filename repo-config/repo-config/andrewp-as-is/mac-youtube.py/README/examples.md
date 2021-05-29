```python
>>> import mac_youtube
>>> mac_youtube.urls()
['https://www.youtube.com/watch?v=cvaIgq5j2Q8','https://www.youtube.com/watch?v=YrhYhI3L32c']
>>> mac_youtube.play()
>>> mac_youtube.playing()
['https://www.youtube.com/watch?v=cvaIgq5j2Q8']
>>> mac_youtube.pause()
```

info
```python
>>> info = mac_youtube.info("cvaIgq5j2Q8")
>>> "%s.%s" % (info["title"], info["ext"])
'Nightcore - Angel With A Shotgun.webm'
```
