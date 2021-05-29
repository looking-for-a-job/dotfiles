#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; travis-exec python3 -m travis_cron.add {} master weekly no )
