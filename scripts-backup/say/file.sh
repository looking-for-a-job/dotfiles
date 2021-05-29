#!/usr/bin/env bash
{ set +x; } 2>/dev/null

usage() {
    cat <<EOF 1>&2
usage: $(basename $0) [-v voice] [-f file.in | string ...]
EOF
    [[ $1 == "-h" ]] || [[ $1 == "--help" ]]; exit
}

[[ $1 == "-h" ]] || [[ $1 == "--help" ]] && usage "$@"

[[ $# != 1 ]] && usage

XDG_DATA_HOME="${XDG_DATA_HOME-$HOME/.local/share}"

relpath="$(echo "$1" | sed "s/:/\//g")"
path="$XDG_DATA_HOME"/tts/"$relpath"

[[ -z "$path" ]] && echo "ERROR: $path NOT EXISTS" 1>&2 && exit 1
! [ -e "$path" ] && echo "ERROR: $path NOT EXISTS" 1>&2 && exit 1

f="$(find "$path" -type f | sort -R | head -1)"
[[ -z "$f" ]] && echo "ERROR: $path EMPTY DIR" 1>&2 && exit 1

trap "pid-killall -9 $$" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 PIPE

say -f "$f"
