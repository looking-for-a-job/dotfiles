#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; bash -l "${BASH_SOURCE[0]%/*}"/upload.sh )
