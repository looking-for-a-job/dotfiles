#!/usr/bin/env bash
{ set +x; } 2>/dev/null

usage() {
    cat <<EOF 1>&2
usage: $(basename $0) [pid]
EOF
    [[ $1 == "-h" ]] || [[ $1 == "--help" ]]; exit
}

[[ $1 == "-h" ]] || [[ $1 == "--help" ]] && usage "$@"

[[ $# == 1 ]] && {
    childs="$(pid-childs $1 && echo $1)" || exit
    ps -ax | grep 'say ' | awk '{print $1}' | grep "$childs" | xargs kill -PIPE 2> /dev/null;:
    ps -ax | grep 'afplay ' | awk '{print $1}' | grep "$childs" | xargs kill -PIPE 2> /dev/null;:
    exit
}
ps -ax | grep 'say ' | awk '{print $1}'| xargs kill -PIPE 2> /dev/null;:
ps -ax | grep 'afplay ' | awk '{print $1}' | xargs kill -PIPE 2> /dev/null;:
