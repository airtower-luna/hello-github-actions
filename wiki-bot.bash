#!/bin/bash

# first command line argument must be the directory containing the wiki
[ -d "${1}" ] || exit 1

# update Bot.md
cat - >"${1}/Bot.md" <<EOF
# Bot

Beep beep, I'm a bot! The time is $(date).
EOF
