#!/usr/bin/env bash
{ set +x; } 2>/dev/null

INTERVAL=120
path=/tmp/say.txt

# /usr/bin/say -v ?

[ -e "$path" ] && {
    modified="$(stat -f "%m" "$path")" || exit
    now="$(date +%s)"
    s=$((now-modified))
    [[ $s -lt $INTERVAL ]] && { touch "$path" && cat "$path"; exit; }
}

voices="Milena
Yuri"
voice="$(echo "$voices" | sort -R | head -1)"
echo "$voice" > "$path"
echo "$voice"
