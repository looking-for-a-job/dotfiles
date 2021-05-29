#!/usr/bin/env bash
{ set +x; } 2>/dev/null

usage() {
    cat <<EOF 1>&2
usage: $(basename $0)
EOF
    [[ $1 == "-h" ]] || [[ $1 == "--help" ]]; exit
}

[[ $1 == "-h" ]] || [[ $1 == "--help" ]] && usage "$@"

[[ $# != 0 ]] && usage

pid-elapsed --seconds $PPID
