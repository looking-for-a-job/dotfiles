`launchd.plist`
```xml
<key>StandardErrorPath</key>
<string>path/to/err.log</string>
<key>StandardOutPath</key>
<string>path/to/out.log</string>
```

`launchd-mklogs` will create `StandardErrorPath`, `StandardOutPath` directories and files with current user permissions
