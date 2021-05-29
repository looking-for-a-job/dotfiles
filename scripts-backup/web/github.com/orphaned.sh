#!/usr/bin/env bash
{ set +x; } 2>/dev/null

username="$(git config user.name)" || exit
cd ~/git/"$username" || exit

eval "$(direnv export bash)" &> /dev/null || exit # source .envrc

python3 -m github_repos | grep "$username" | grep -v "$(find "$PWD" -maxdepth 1 -exec github-fullname {} \; 2> /dev/null)";:
