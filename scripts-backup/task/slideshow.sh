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

[[ $# == 0 ]] && set -- $TASK_NAME

path=~/Library/Screen\ Savers/"$1"
! [ -e "$path" ] && echo "ERROR: $path NOT EXISTS" 1>&2 && exit 1

slideshow "$path" || exit
