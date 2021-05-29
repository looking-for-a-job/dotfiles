#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; travis-exec travis cancel -r {} )
