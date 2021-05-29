#!/usr/bin/env bash
{ set +x; } 2>/dev/null

IFS=
repos="$(set -x; repos --finder)" || exit
[[ -z "$repos" ]] && echo "SKIP: EMPTY" && exit

projects="$(while ISF= read path; do
    [[ "$path" == *"deprecated"* ]] && continue
    [[ $path == *.py ]] && echo "$path"
done <<< "$repos")"

while IFS= read path; do
    { set -x; cd "$path" || exit; { set +x; } 2>/dev/null; }
    ( set -x; . ~/.sh/repo/web/code-review/sonarcloud.io/sonar-scanner.sh ) || exit
done <<< "$projects";:
