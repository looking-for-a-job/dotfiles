#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

IFS=
path_list="$(find ~/git/andrewp-as-is -type d -mindepth 1 -maxdepth 1)"

[[ -n "$path_list" ]] && while IFS= read path; do
    cd "$path" || exit
    [ -e setup.py ] && ( set -x; python3 "$PWD"/setup.py install )
done <<< "$path_list";:

