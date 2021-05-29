#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

command="repo:files:README:create"
cd ~/git/andrewp-as-is || exit

find . -type d -mindepth 1 -maxdepth 1 -exec bash -cx "cd {}; $command" \;
