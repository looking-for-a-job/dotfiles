#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

[ -e .env ] && { set -o allexport; . .env || exit; }

ssh_hostname="aws"
path=/usr/share/static/"${PWD##*/}"

( set -x; ssh "$ssh_hostname" "sudo mkdir -m 777 -p $path" )
( set -x; rsync -a --delete --no-perms --no-owner --no-group --omit-dir-times static/ -e ssh "$ssh_hostname":"$path" )
