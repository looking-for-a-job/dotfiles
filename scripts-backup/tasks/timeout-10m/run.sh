#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- timeout-10m

display sleep
task:say:run "$@" || exit

while :; do
    s="$(pid-elapsed --seconds $$)" || exit
    m="$(pid-elapsed --minutes $$)" || exit
    [[ $m -ge 10 ]] && break
    [[ $(($s%60)) == 0 ]] && {
        task:growlnotify -t "$m/$MAX Проветривание" &
        say "перерыв длится [[ru:minutes $m]]" || exit
    }
    sleep 1
done;:
task:complete "$@" || exit
task:say:completed "$@" || exit
display wake

