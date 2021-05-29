#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- water

task:complete "$@"
task:say:run "$@" &
task:slideshow:wait "$@"
task:say:kill
