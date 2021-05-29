#!/usr/bin/env log-exec bash
{ set +x; } 2>/dev/null

task:growlnotify -t "Перерыв" "$@"
