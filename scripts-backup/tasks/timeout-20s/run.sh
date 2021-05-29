#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- timeout-20s

pause || exit
display sleep || exit
task:say:run "$@" &
sleep 20 && display wake
s="$(pid-elapsed $$)" || exit
[[ $s -gt 20 ]] && {
    task:complete "$@"
    task:say:completed "$@"
};:
