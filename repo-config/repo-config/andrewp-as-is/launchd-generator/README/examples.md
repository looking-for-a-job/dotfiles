`agent.sh`
```bash
#!/usr/bin/env bash
# StartInterval: 10
```

`agent.sh.plist`
```xml
<key>ProgramArguments</key>
<array>
    <string>/path/to/agent.sh</string>
    <string>/path/to/agent.sh.plist</string>
</array>
<key>StartInterval</key>
<integer>10</integer>
```

`agent.py`
```python
#!/usr/bin/env python
"""
WatchPaths: ~/Desktop
WatchPaths: ~/Downloads
"""
```

`agent.py.plist`
```xml
<key>ProgramArguments</key>
<array>
    <string>/path/to/agent.py</string>
    <string>/path/to/agent.py.plist</string>
</array>
<key>WatchPaths</key>
<array>
    <string>/Users/username/Desktop</string>
    <string>/Users/username/Downloads</string>
</array>
```

```bash
$ cd ~/Library/LaunchAgents && find . \( -name "*.sh" -o -name "*.py" \) | xargs launchd-generator
```
