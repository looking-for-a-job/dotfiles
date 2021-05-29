```bash
$ launchd-exec bash -l path/to/script.sh
launchd-exec.<hash> # label

$ pid="$(/bin/launchctl list | grep "$label" | awk '{print $1}')"
```

logs:
```
~/Library/Logs/launchd-exec/<hash>/out.log
~/Library/Logs/launchd-exec/<hash>/err.log
~/Library/Logs/launchd-exec/<hash>/launchd.plist
```
