#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; bash -l ~/.repo-scripts/files/README:validate )
