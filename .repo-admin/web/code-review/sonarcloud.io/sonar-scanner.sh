#!/usr/bin/env bash
{ set +x; } 2>/dev/null

# /usr/local/etc/sonar-scanner.properties
# /path/to/repo/sonar-scanner.properties

id="${PWD##*/}"
set -- -Dsonar.projectKey="$id"
# brew cask install java
# brew install sonar-scanner
( set -x; sonar-scanner "$@" ) || exit
