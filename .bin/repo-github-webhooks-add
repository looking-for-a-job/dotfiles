#!/usr/bin/env bash
{ set +x; } 2>/dev/null

[[ "${PWD%/*}" == ~/git/gists ]] && echo "SKIP ($PWD)" && exit

echo "disabled"; exit

! [ -e .github/webhooks/push.sh ] && echo "SKIP ($PWD): .github/webhooks/push.sh NOT EXISTS" && exit
[[ -z "$GITHUB_WEBHOOK_PUSH_URL" ]] && echo "ERROR: GITHUB_WEBHOOK_PUSH_URL empty" && exit 1
( set -x; python3 -m github_webhooks.add "push" "$GITHUB_WEBHOOK_PUSH_URL" ) || exit
