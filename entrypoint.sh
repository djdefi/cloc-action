#!/usr/bin/env sh
# Trust workspace
git config --global --add safe.directory "$GITHUB_WORKSPACE"
cloc $(git rev-parse HEAD) $1 | tee -a cloc.txt
