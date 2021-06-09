#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; bash -l ~/.repo-scripts/git/remote/add.sh )
