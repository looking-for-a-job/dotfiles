#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; repo-git-init ) || exit
( set -x; repo-git-add ) || exit
( set -x; repo-git-commit ) || exit
( set -x; repo-github-create ) || exit
( set -x; repo-git-push ) || exit
( set -x; repo-github-description ) || exit
( set -x; repo-github-homepage ) || exit
( set -x; repo-github-browse ) || exit
