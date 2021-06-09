#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

{ set -x; cd "${BASH_SOURCE[0]%/*/*/*/*/*}"; { set +x; } 2>/dev/null; }

NGROK_WEBPACK_TUNNEL="$(curl -s http://localhost:4040/api/tunnels | jq '.tunnels[] | select(.name=="webpack")' | jq -r '.public_url')" 2> /dev/null

[[ -n "$NGROK_WEBPACK_TUNNEL" ]] && {
    { set -x; export NGROK_WEBPACK_TUNNEL=$NGROK_WEBPACK_TUNNEL; { set +x; } 2>/dev/null; }
}
( set -x; webpack serve --config assets/webpack-config/dev.js --mode=none )
