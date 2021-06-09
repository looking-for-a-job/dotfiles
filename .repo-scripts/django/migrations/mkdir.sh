#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; find . \( -name "models.py" -o -name models \) -exec sh -c 'mkdir -p ${0%/*}/migrations; touch ${0%/*}/migrations/__init__.py' {} \; )
