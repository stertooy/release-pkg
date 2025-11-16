#!/usr/bin/env bash
set -e
set -o pipefail

shopt -s globstar

if grep -rlE '<a href="(file:/)?/' ./**/*.htm* ; then
  exit 1
fi
