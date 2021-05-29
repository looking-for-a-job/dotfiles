#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; repo-python-setup-create ) || exit
( set -x; cat setup.py )
