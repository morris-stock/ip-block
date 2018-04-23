#!/usr/bin/env bash
set -x

journalctl -r /usr/sbin/sshd | grep 'Invalid user' | cut -d' ' -f 10 | uniq | sort --version-sort | uniq > ip.txt

git add ip.txt

git commit -m "Update hacker ip by \`update.sh'"
