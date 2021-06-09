#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; git log --pretty=format:"%h%x09%an%x09%ad%x09%s" )
