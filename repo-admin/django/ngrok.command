#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

{ set -x; cd "${0%/*/*/*}"; { set +x; } 2>/dev/null; }

#names="$(yq r ./ngrok.yml tunnels | grep -v ' .*' | sed 's/.$//')"
#IFS=$'\n';set $names;IFS=

#( set -x; ngrok start -config ./ngrok.yml "$@" )
( set -x; ngrok http 8000 )
