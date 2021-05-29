#!/usr/bin/env bash
{ set +x; } 2>/dev/null

[ -e scripts ] && [ -e setup.py ] && { image="$(image cli.png)" || exit; }
[[ "$PWD" == *-example ]] && { image="$(image example.png)" || exit; }
[[ "$PWD" == *-examples ]] && { image="$(image examples.png)" || exit; }
[[ "$PWD" == *.py ]] && { image="$(image py.png)" || exit; }
[[ "${PWD##*/}" == sublime-* ]] && { image="$(image sublime.png)" || exit; }
[[ "${PWD##*/}" == uebersicht*.widget ]] && { image="$(image uebersicht.png)" || exit; }
[[ "$PWD" == *-examples ]] && {
    IFS='-';set ${PWD##*/}; _image="$(image $1.png)" || exit
    [[ -n "$_image" ]] && image="$_image"
}
[[ "$PWD" == *-examples ]] && [ -e .config ] && {
    _image="$(find .config -type f -name "*.png" -maxdepth 1 | head -1)"
    [[ -n "$_image" ]] && image="$_image"
}
[[ -z "$image" ]] && exit
[ "$PWD"/$'Icon\r' -nt "$image" ] && echo "SKIP: [ $PWD/$'Icon\r' -nt $image ]" && exit
finder-icon "$PWD" "$image"
