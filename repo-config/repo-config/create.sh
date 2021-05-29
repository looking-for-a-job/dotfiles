#!/usr/bin/env bash
{ set +x; } 2>/dev/null

XDG_CONFIG_HOME="${XDG_CONFIG_HOME-$HOME/.config}"
XDG_DATA_HOME="${XDG_DATA_HOME-$HOME/.local/share}"

( set -x; repo-config init . ) || exit
! [ -e .config/README ] && { mkdir .config/README || exit; }

[ -e .config/version.txt ] && {
    ( set -x; ln -fs "$REPO_CONFIG"/.scripts/_bumpversion.sh .config/_bumpversion.sh )
}
( set -x; ln -fs "$REPO_CONFIG"/.scripts/_create.sh .config/_create.sh )
( set -x; ln -fs "$REPO_CONFIG"/.scripts/README/_create.sh .config/README/_create.sh )
[ -e setup.py ] && {
    ! [ -e .config/pypi.org ] && { ( set -x; mkdir -p .config/pypi.org ) || exit; }
    ( set -x; ln -fs "$REPO_CONFIG"/.scripts/pypi.org/_create.sh .config/pypi.org/_create.sh )
}
[ -e package.json ] && {
    ( set -x; ln -fs "$REPO_CONFIG"/.scripts/node/_create.sh .config/node/_create.sh )
};:
