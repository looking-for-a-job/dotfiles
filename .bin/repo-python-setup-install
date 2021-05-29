#!/usr/bin/env bash
{ set +x; } 2>/dev/null

! [ -e setup.py ] && echo "SKIP ($PWD): setup.py NOT EXISTS" && exit

( set -x; rm -fr /tmp/python )
( set -x; python3 setup.py install )
