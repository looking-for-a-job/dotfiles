#!/usr/bin/env bash
{ set +x; } 2>/dev/null

IFS=
path="${BASH_SOURCE[0]%/*}"
find="$(find "$path" -type f -name "description.txt")" || exit
[[ -n "$find" ]] && while IFS= read f; do
    string="$(cat "$f" | tr -d '\n\r\t')" || exit
    echo -n "$string" > "$f"
done <<< "$find";:
