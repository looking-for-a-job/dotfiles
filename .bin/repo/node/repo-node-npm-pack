#!/usr/bin/env bash
{ set +x; } 2>/dev/null

! [ -e package.json ] && echo "ERROR: ./package.json NOT EXISTS" && exit 1

# https://docs.npmjs.com/files/package.json#files
# README.md always included

( set -x; npm pack ) || exit

src="$(find . -type f -name "*.tgz" -maxdepth 1)" || exit
dst=/tmp/"${src##*/}"
( set -x; mv "$src" "$dst" ) || exit
( set -x; open -R "$dst" )

