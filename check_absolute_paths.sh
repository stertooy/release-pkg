#!/usr/bin/env bash
set -e
set -o pipefail

if fgrep -q -r '<a href="/' *.htm*; then
  exit 1
fi
