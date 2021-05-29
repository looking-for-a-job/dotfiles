#!/usr/bin/env bash
{ set +x; } 2>/dev/null

usage() {
    cat <<EOF 1>&2
usage: $(basename $0) seconds
EOF
    [[ $1 == "-h" ]] || [[ $1 == "--help" ]]; exit
}

[[ $1 == "-h" ]] || [[ $1 == "--help" ]] && usage "$@"

[[ $# != 1 ]] && usage

seconds="$(pid-elapsed --seconds $PPID)" || exit
[[ $seconds -gt "$1" ]]
