#!/usr/bin/env bash
set -euo pipefail

APP_DIR="${1:-/home/amr/.openclaw/workspace/mission-control}"
cd "$APP_DIR"

npx playwright test tests/e2e/smoke.api.spec.ts
npm run ops:perf-snapshot

echo "[functions-smoke] PASS"
