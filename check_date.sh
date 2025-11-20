#!/usr/bin/env bash
set -e
set -o pipefail

DATE="$1"

# Convert DD/MM/YYYY to YYYY-MM-DD
if [[ "$DATE" =~ ^[0-9]{2}/[0-9]{2}/[0-9]{4}$ ]]; then
  DATE=$(echo "$DATE" | awk -F/ '{print $3"-"$2"-"$1}')
fi

TODAY=$(date +%Y-%m-%d)
YESTERDAY=$(date -d "yesterday" +%Y-%m-%d)
TOMORROW=$(date -d "tomorrow" +%Y-%m-%d)

if [[ "$DATE" != "$TODAY" && "$DATE" != "$YESTERDAY" && "$DATE" != "$TOMORROW" ]]; then
  exit 1
fi
