```bash
$ find ~/Library/LaunchAgents -name "*.plist" -print0 | xargs -0 launchd-mklogs
```
