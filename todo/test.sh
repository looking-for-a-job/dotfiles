#!/usr/bin/env bash
{ set +x; } 2>/dev/null

dist_dir="$(mktemp -d)" || exit

export SETUP_VERSION=42

( set -x; python setup_dist.py sdist --dist-dir="$dist_dir"  1> /dev/null ) || exit
find "$dist_dir" -type f
