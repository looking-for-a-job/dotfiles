#!/usr/bin/env bash
{ set +x; } 2>/dev/null

! [ -e .git/hooks ] && echo "SKIP ($PWD): .git/hooks NOT EXISTS" && exit

templatedir="$(git config init.templatedir)" || exit
templatedir="${templatedir/\~/$HOME}"

[ -z "$templatedir" ] && echo "ERROR: init.templatedir EMPTY" && exit 1
! [ -e "$templatedir" ] && echo "ERROR: $templatedir NOT EXISTS" && exit 1

( set -x; rsync --delete -a "$templatedir"/ .git/hooks )
