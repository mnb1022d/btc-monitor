#!/usr/bin/env bash
set -euo pipefail
SERVER="${NTFY_SERVER:-https://ntfy.sh}"
TOPIC="${NTFY_TOPIC:?Set NTFY_TOPIC}"
TITLE="${1:-BTC Monitor}"
MESSAGE="${2:-New BTC monitoring report}"
curl -fsS -H "Title: $TITLE" -H "Tags: chart_with_upwards_trend" -d "$MESSAGE" "$SERVER/$TOPIC"
