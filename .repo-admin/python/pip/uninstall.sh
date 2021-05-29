#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; bash -l ~/.repo-scripts/files/python/pip/uninstall.sh )
