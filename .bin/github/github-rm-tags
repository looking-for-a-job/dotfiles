#!/usr/bin/env bash
{ set +x; } 2>/dev/null


remote_name="github"
git ls-remote --tags "$remote_name" | awk '/^(.*)(s+)(.*[a-zA-Z0-9])$/ {print ":" $2}' | xargs git push "$remote_name"
