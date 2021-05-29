`~/Library/LaunchAgents/.env`
```bash
PATH=/Users/username/.local/share/bin
```

```bash
$ python3 -m launchd_env ~/Library/LaunchAgents/.env ~/Library/LaunchAgents/agent.plist
```

`~/Library/LaunchAgents/agent.plist`
```xml
...
<key>EnvironmentVariables</key>
<dict>
    <key>PATH</key>
    <string>/Users/username/.local/share/bin</string>
</dict>
...
```

```bash
$ find ~/Library/LaunchAgents -name "*.plist" -print0 | xargs -0 python3 -m launchd_env ~/Library/LaunchAgents/.env
```
