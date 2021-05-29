#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; itunes pause ) || exit
( set -x; vlc pause ) || exit
# defaults write com.apple.QuickTimePlayerX MGPlayMovieOnOpen 1
( set -x; /usr/bin/open -a "quicktime player" "$1" ) || exit
