# BTC Monitor — Claude Code instructions

Work with Codex through this repository as the single shared source of truth.

- Dashboard source: `index.html`, `style.css`, `app.js`.
- Shared monitoring state: `data/latest.json`.
- Use confirmed information only; omit unavailable/unconfirmed metrics.
- Keep probabilities totaling 100 when present.
- Timestamps are Asia/Tokyo.
- Preserve reports written by other agents; prepend new reports rather than replacing history.
- Pull `main` before work and avoid force pushes.
- Never store secrets in this repository.
- ntfy configuration comes from `NTFY_TOPIC` / `NTFY_SERVER` environment variables.
- After an important confirmed update, run `bash scripts/publish-ntfy.sh "BTC Monitor" "<short confirmed report>"`.
- Keep user-facing reports concise and in Japanese.