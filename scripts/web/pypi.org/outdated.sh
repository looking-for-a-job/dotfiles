#!/usr/bin/env bash
{ set +x; } 2>/dev/null

IFS=
repos="$(set -x; repos)" || exit
[[ -z "$repos" ]] && echo "SKIP: EMPTY" && exit

while ISF= read path; do
    cd "$path" || exit
    [ -e setup.cfg ] || continue
    name="$(cat setup.cfg | grep "name = " | head -1 | awk '{print $NF}')"
    v="$(cat setup.cfg | grep "version = " | head -1 | awk '{print $NF}')"
    url="https://pypi.org/project/$name/$v/"
    status="$(curl -s -o /dev/null -w "%{http_code}" "$url" 2> /dev/null)" || exit
    [[ "$status" != 200 ]] && echo $PWD
done <<< "$repos";:
