#!/usr/bin/env bash
set -e
set -o pipefail

if grep -rlE '<a href="(file:/)?/' . --include='*.htm*' ; then
  exit 1
fi
