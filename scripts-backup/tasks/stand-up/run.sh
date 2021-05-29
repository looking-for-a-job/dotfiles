#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- stand-up

task:say:run "$@" &> /dev/null &
trap "say:kill $$" EXIT
task:slideshow "$@"
timeout 60 waitpid "$(screensaver pid)" 2> /dev/null
task:say:kill || exit
elapsed="$(pid-elapsed $$)" || exit
[[ $elapsed -gt 60 ]] && {
    task:complete "$@" || exit
    task:say:completed "$@" || exit
}
screensaver stop
