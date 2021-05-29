`.env` file
```bash
PATH=path/to/custom/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
```

`<app>/Contents/Info.plist`
```xml
<key>LSEnvironment</key>
<dict>
     <key>PATH</key>
     <string>path/to/custom/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin</string>
</dict>
```
