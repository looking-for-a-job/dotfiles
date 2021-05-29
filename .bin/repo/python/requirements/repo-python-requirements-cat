#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; find . -type f -name "requirements.txt" -exec bash -c "set -x; cat {}" {} \; )
