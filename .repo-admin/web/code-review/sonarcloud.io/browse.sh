#!/usr/bin/env bash
{ set +x; } 2>/dev/null

id="${PWD##*/}"
url="https://sonarcloud.io/dashboard?id=${id}"
( set -x; open "$url" )
