#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; bash -l ~/.repo-scripts/web/github.com/topics/create.sh )
