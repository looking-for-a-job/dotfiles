#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

[ -e .config/docker.env ] && { set -o allexport; . .config/docker.env || exit; }

[[ -z "$SSH_HOSTNAME" ]] && SSH_HOSTNAME="aws"
[[ -z "$DOCKER_NAME" ]] && DOCKER_NAME="${PWD##*/}"

( set -x; ssh "$SSH_HOSTNAME" sudo docker image rm -f "$DOCKER_NAME" );:
( set -x; ssh "$SSH_HOSTNAME" sudo docker system prune -f ) || exit
# sudo docker system prune --all
