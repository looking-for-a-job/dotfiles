#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

find -H ~/git -type f -name setup.py -maxdepth 3 | sed 's#/[^/]*$##' | while read path; do
    ( set -x; cd "$path" && bash -l ~/.repo-scripts/files/python/setup.py/create.sh ) || exit
done
