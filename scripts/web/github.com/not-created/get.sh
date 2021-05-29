#!/usr/bin/env bash
{ set +x; } 2>/dev/null

cd ~/git/looking-for-a-job || exit

eval "$(direnv export bash)" || exit # source .envrc

find "$PWD" -maxdepth 1 -exec github-fullname {} \; 2> /dev/null | grep -v "$(python3 -m github_repos)";:
