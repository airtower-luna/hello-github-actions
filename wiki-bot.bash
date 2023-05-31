#!/bin/bash

# first command line argument must be the directory containing the wiki
[ -d "${1}" ] || exit 1

# update Bot.md
cat - >"${1}/Bot.md" <<EOF
# Bot

Beep beep, I'm a bot! The time of my last run was $(date), for a
\`${GITHUB_EVENT_NAME}\` event at \`${GITHUB_REPOSITORY}:${GITHUB_REF}\`.
EOF
