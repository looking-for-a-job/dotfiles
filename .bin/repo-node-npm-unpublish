#!/usr/bin/env bash
{ set +x; } 2>/dev/null

# https://www.npmjs.com/policies/unpublish
name="$(node -e "console.log(require('./package.json').name);")" || exit
( set -x; npm unpublish "$name" -f )
