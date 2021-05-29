#!/bin/sh

eval "$(readme-env .)" || exit

eval "export VAR=VALUE"
echo $VAR
