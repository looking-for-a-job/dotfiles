#!/usr/bin/env bash
{ set +x; } 2>/dev/null

# site-packages/name-X.Y.Z-pyV.V.egg        python3 setup.py install
# site-packages/name/                       pip install .
# site-packages/name-1.0.2-py3.6.egg-info   pip install .

( set -x; . ~/.sh/repo/files/python/pip/uninstall.sh ) || exit
( set -x; . ~/.sh/repo/files/python/pip/install.sh ) || exit
