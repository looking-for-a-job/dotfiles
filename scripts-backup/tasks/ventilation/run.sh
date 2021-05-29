#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- ventilation

# todo: разное время проветривания летом зимой и тд

MIN="$(defaults read tasks.ventilation min 2> /dev/null || echo 3)"
MAX="$(defaults read tasks.ventilation max 2> /dev/null || echo 15)"

task:growlnotify -t "0/$MIN Проветривание" "$@"

task:say:run "$@" || exit

while :; do
    s="$(pid-elapsed --seconds $$)" || exit
    m="$(pid-elapsed --minutes $$)" || exit
    [[ $(($s%60)) == 0 ]] && {
        [[ $m -ge $MIN ]] && {
            task:complete "$@" || exit
            task:say:completed "$@" || exit
            task:growlnotify -t "Проветривание" -m "Завершено! $m:00" "$@"
        } || {
            say "проветривание длится [[ru:minutes $m]]" || exit
            task:growlnotify -t "$m:$MIN Проветривание" "$@"
        }
    }
    sleep 1
done;:
