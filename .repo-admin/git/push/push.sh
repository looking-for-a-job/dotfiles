#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; repo-git-init ) || exit
( set -x; repo-git-add ) || exit
( set -x; repo-git-commit ) || exit
( set -x; repo-git-push ) || exit
( set -x; repo-github-browse ) || exit
