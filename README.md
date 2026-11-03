# BTC Monitor

Codex / Claude Code / ChatGPT で共有するBTC監視ダッシュボードです。

## 構成
- `index.html` — ダッシュボード
- `data/latest.json` — 共通の最新監視レポート
- `AGENTS.md` — Codex向けルール
- `CLAUDE.md` — Claude Code向けルール
- `scripts/publish-ntfy.sh` — ntfy通知

## ntfy設定
通知先Topicはリポジトリへ直接書かず、実行環境の `NTFY_TOPIC` に設定します。独自ntfyサーバーを使う場合だけ `NTFY_SERVER` も設定してください。

重要な監視結果を書き込んだ後:

```bash
bash scripts/publish-ntfy.sh "BTC Monitor" "重要な更新内容"
```

## 公開
静的サイトなので GitHub Pages / Cloudflare Pages / Netlify / Vercel などで公開できます。リポジトリがprivateの場合は、公開方法とアクセス制御を確認してからデプロイしてください。

## 運用ルール
未確認データは報告しない。重要イベント発表時は `data/latest.json` を更新し、上昇・レンジ・下落確率は合計100%にします。