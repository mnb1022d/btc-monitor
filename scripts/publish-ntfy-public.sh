#!/usr/bin/env bash
set -euo pipefail
SERVER="${NTFY_SERVER:-https://ntfy.sh}"
TOPIC="btc-monitor-mnb1022d-7f3a91c6e24b"
TITLE="${1:-BTC Monitor}"
MESSAGE="${2:-New important BTC monitoring report}"
DASHBOARD="https://mnb1022d.github.io/btc-monitor/"
curl -fsS \
  -H "Title: $TITLE" \
  -H "Tags: chart_with_upwards_trend" \
  -H "Priority: high" \
  -H "Click: $DASHBOARD" \
  -d "$MESSAGE" \
  "$SERVER/$TOPIC"
