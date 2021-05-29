#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

command="repo:web:github.com:run"
cd ~/git/andrewp-as-is || exit

find . -type d -mindepth 1 -maxdepth 1 -exec bash -cx "cd {}; $command" \;