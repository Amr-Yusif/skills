#!/usr/bin/env bash
set -euo pipefail

APP_DIR="${1:-/home/amr/.openclaw/workspace/mission-control}"
BASE_URL="${2:-http://127.0.0.1:3010}"

cd "$APP_DIR"
echo "[gate] running tests"
npm run test

echo "[gate] building"
npm run build

echo "[gate] smoke subset"
npx playwright test tests/e2e/smoke.api.spec.ts

echo "[gate] runtime checks"
curl -fsSI "$BASE_URL/overview" >/dev/null || true
curl -fsSI "$BASE_URL/radar" >/dev/null || true

echo "[gate] PASS"
