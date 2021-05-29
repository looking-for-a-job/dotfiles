#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; pause ) || exit # pause music :)
( set -x; vlc-play "$1" 1 ) || exit
( set -x; vlc fullscreen-enter ) || exit
( set -x; open -a VLC ) # make VLC frontmost
