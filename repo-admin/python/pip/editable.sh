#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; find . -type d -name "*.egg-info" -exec rm -fr {} \; ) || exit
( set -x; pip install -e . )
