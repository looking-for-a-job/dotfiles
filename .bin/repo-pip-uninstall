#!/usr/bin/env bash
{ set +x; } 2>/dev/null

! [ -e setup.py ] && echo "SKIP ($PWD): setup.py NOT EXISTS" && exit

name="$(python3 setup.py --name)" || exit
[[ -z "$name" ]] && echo "ERROR: unknown name" && exit 1
pip="$(which pip)" || exit

grep -q "packages =\|py_modules =" setup.cfg && {
    ( set -x; python "$pip" uninstall -y "$name" ) || exit
} || echo "SKIP: no packages/py_modules"
