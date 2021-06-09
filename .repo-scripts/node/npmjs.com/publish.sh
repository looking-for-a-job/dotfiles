#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

( set -x; repo-node-npm-publish && repo-node-npm-browse )
