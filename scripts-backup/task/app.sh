#!/usr/bin/env bash
{ set +x; } 2>/dev/null

usage() {
    cat <<EOF 1>&2
usage: $(basename $0) path
EOF
    [[ $1 == "-h" ]] || [[ $1 == "--help" ]]; exit
}

[[ $1 == "-h" ]] || [[ $1 == "--help" ]] && usage "$@"

app="${1%/*/*/*}"
name="$(IFS=.;set ${app##*/};echo $1)"

path="$(which tasks:"$name":run)" || exit
label="$(launchd-exec bash -l "$path")" || exit
pid="$(/bin/launchctl list | grep "$label" | awk '{print $1}')"
pid-trap "$PPID" pid-killall -9 $pid &
pid-trap "$pid" pid-killall -9 $PPID &
wait

