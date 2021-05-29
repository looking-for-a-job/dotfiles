#!/usr/bin/env bash
{ set +x; } 2>/dev/null

# git@github.com:username/repo.git              default
# git@username.github.com:username/repo.git     multiple github ssh keys

# ssh config:
# Host username.github.com
# HostName github.com
# User git
# IdentityFile ~/.ssh/path/to/id_rsa_file

[[ "$PWD" == */gists/* ]] && echo "SKIP: $PWD" && exit

remote="github"
login="$(git config user.name)" || exit
repo="$(awk -F/ '{print $(NF)}' <<< "$PWD")" || exit
# fullname="$(awk -F/ '{print $(NF-1)"/"$(NF)}' <<< "$PWD")" || exit
fullname="${login}/${repo}"
# host=$username.github.com
host=github.com
url="git@$host:$fullname.git"
( set -x; grep "$url" .git/config ) && exit

[[ -n "$(git remote -v)" ]] && { ( set -x; git remote rm "$remote" ) || exit; }
( set -x; git remote add "$remote" "$url" ) || exit
( set -x; git remote -v )
