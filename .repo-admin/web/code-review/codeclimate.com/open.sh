#!/usr/bin/env bash
{ set +x; } 2>/dev/null

user="$(git config user.name)" || exit
fullname="$user/${PWD##*/}"
url="https://codeclimate.com/github/$fullname"

( set -x; open "https://codeclimate.com/github/repos/new?$fullname" )
