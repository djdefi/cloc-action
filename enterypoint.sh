#!/usr/bin/env sh
cloc $(git rev-parse HEAD) | tee -a cloc.txt
