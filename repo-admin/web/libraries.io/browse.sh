#!/usr/bin/env bash
{ set +x; } 2>/dev/null

[ -e setup.py ] && {
    name="$(python setup.py --name)" || exit
    url="http://libraries.io/pypi/$name"
    ( set -x; open "$url" ) || exit
}
[ -e package.json ] && {
    name="$(node -e "console.log(require('./package.json').name);")" || exit
    url="http://libraries.io/npm/$name"
    ( set -x; open "$url" ) || exit
};:

