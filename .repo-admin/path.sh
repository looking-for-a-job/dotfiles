#!/usr/bin/env bash
{ set +x; } 2>/dev/null

echo "$PWD" | tr -d '\n' | pbcopy
echo "$PWD"
