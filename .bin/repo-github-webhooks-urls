#!/usr/bin/env bash
{ set +x; } 2>/dev/null

[[ "${PWD%/*}" == ~/git/gists ]] && echo "SKIP ($PWD)" && exit

( set -x; python3 -m github_webhooks.urls )
