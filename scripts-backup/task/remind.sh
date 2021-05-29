#!/usr/bin/env bash
{ set +x; } 2>/dev/null

usage() {
    cat <<EOF 1>&2
usage: $(basename $0) slug
EOF
    [[ $1 == "-h" ]] || [[ $1 == "--help" ]]; exit
}

[[ $1 == "-h" ]] || [[ $1 == "--help" ]] && usage "$@"

[[ $# != 1 ]] && usage

ps -ax | grep -v grep | grep -q "tasks:$1:run" && exit

path="$(which tasks:$1:remind:growlnotify)"
[[ -z "$path" ]] && exit

[[ -n "$path" ]] && "$path" "$@" &
task:say:remind "$@"

