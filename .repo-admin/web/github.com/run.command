#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

( set -x; bash -l "${BASH_SOURCE[0]%/*}"/run.sh )
