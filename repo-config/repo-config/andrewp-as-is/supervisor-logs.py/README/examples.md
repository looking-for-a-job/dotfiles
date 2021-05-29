`file.ini` before
```
[program:name]
```

```bash
$ export SUPERVISOR_LOGS=~/Library/Logs
$ python3 -m supervisor_logs.add file.ini
```

`file.ini` after
```
[program:name]
stderr_logfile = ~/Library/Logs/supervisor/name/err.log
stdout_logfile = ~/Library/Logs/supervisor/name/out.log
```

```bash
$ find . -name "*.ini" -exec supervisor_logs.add {} \;  # add logs to program sections
$ find . -name "*.ini" -exec supervisor_logs.mkdir {} \;  # make log directories
$ find . -name "*.ini" -exec supervisor_logs.clear {} \;  # clear log files
```

