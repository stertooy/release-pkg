#!/usr/bin/env bash
set -e
set -o pipefail

if find . -type l; then
  exit 1
fi
