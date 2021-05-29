#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; execdir run -v "python" repo:files:python:requirements.txt:pip:install )
