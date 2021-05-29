```python
>>> class MyPlist(launchd_plist.Plist):
    Label = "MyPlist"
    StartInterval = 1
    Custom_key = "works"

    @property
    def StandardErrorPath(self):
        return os.path.expanduser("~/Logs/LaunchAgents/%s/err.log" % self.Label)

>>> MyPlist().create('launchd.plist')
```

`launchd.plist`
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Custom_key</key>
    <string>works for Capitalized keys!</string>
    <key>Label</key>
    <string>MyPlist</string>
    <key>StandardErrorPath</key>
    <string>/Users/russianidiot/Logs/LaunchAgents/MyPlist/err.log</string>
    <key>StartInterval</key>
    <integer>1</integer>
</dict>
</plist>
```
