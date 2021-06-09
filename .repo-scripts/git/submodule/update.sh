#!/usr/bin/env bash
{ set +x; } 2>/dev/null

! [ -e .gitmodules ] && echo "SKIP: .gitmodules NOT EXISTS" && exit
( set -x; git submodule update --init --recursive --remote ) || exit
( set -x; touch . )
