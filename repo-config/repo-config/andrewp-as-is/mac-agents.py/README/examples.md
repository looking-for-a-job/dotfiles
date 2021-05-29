`~/Library/LaunchAgents/file.py`
```python
import mac_agents

class Agent(mac_agents.Agent):
    StartInterval = 5  # capital letter

    def run(self):
        pass

if __name__ == "__main__":
    Agent().run()
```

```bash
$ find ~/Library/LaunchAgents -name "*.py" | xargs python3 -m mac_agents.create "$@"
$ find ~/Library/LaunchAgents -name "*.plist" | xargs launchctl load # or launchctl unload
$ launchctl list | grep .py$ | awk '{print $3}' | xargs -I '{}' launchctl remove {}
$ find ~/Library/LaunchAgents -name "*.py.plist" -exec rm {} +
```
