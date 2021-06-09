#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

[ -e .env ] && { set -o allexport; . .env || exit; }

( set -x; webpack --config assets/webpack/webpack.config.prod.js --mode=none ) || exit
( set -x; python manage.py collectstatic --no-input ) || exit

ssh_hostname="aws"
path=/usr/share/static/"${PWD##*/}"

( set -x; ssh "$ssh_hostname" "sudo mkdir -p $path; sudo chmod -R 777 $path" )
( set -x; rsync -a --delete --no-perms --no-owner --no-group --omit-dir-times static/ -e ssh "$ssh_hostname":"$path" )
