# BTC Monitor — Codex instructions

This repository is a shared BTC monitoring dashboard used by Codex and Claude Code.

## Shared contract
- Read and preserve `data/latest.json` schema.
- Only write confirmed market/economic information. Do not invent unavailable metrics.
- `probabilities.up + probabilities.range + probabilities.down` must equal 100 when populated.
- Risk values: `低`, `中`, `高`, `非常に高い`.
- Use Japan time (Asia/Tokyo) for report timestamps.
- Add newest report at the beginning of `reports` and keep the list concise.
- Never commit API keys, ntfy credentials, tokens, passwords, or private URLs.
- For important new reports, publish an ntfy notification after the report is successfully written.

## Notification
Set `NTFY_TOPIC` and optionally `NTFY_SERVER` in the runtime environment. Run:

`bash scripts/publish-ntfy.sh "BTC Monitor" "<short confirmed report>"`

## Coordination
Before editing, pull the newest `main`. Keep changes small. Do not overwrite a newer report from another agent. If simultaneous work is likely, use a branch/PR.