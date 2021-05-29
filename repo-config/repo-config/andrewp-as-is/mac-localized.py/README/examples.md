```python
>>> import mac_localized
>>> mac_localized.mkdir("folder",ru="ru translation",de="de translation")
'folder.localized'

>>> mac_localized.load("folder")
{'ru':'ru translation','de':'de translation'}

>>> mac_localized.update("folder",ru="new ru translation",de="new de translation")

>>> mac_localized.get("folder","ru")
'new ru translation'

>>> mac_localized.rm("folder",["ru"])
>>> mac_localized.rm("folder")  # rm all localizations
```
