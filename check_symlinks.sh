#!/usr/bin/env bash
set -e
set -o pipefail

if find . -type l | grep -q .; then
  exit 1
fi
