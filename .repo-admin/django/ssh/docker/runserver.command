#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

[ -e .env ] && { set -o allexport; . .env || exit; }
[ -e .config/docker.env ] && { set -o allexport; . .config/docker.env || exit; }

[[ -z "$SSH_HOSTNAME" ]] && SSH_HOSTNAME="aws"
[[ -z "$DOCKER_NAME" ]] && DOCKER_NAME="${PWD##*/}"
SSH_ENV_FILE="/usr/share/env/${PWD##*/}/.env"

( set -x; ssh "$SSH_HOSTNAME" sudo docker run --entrypoint='' --env-file "$SSH_ENV_FILE" "$DOCKER_NAME" python -u manage.py runserver )
