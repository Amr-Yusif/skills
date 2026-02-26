#!/usr/bin/env bash
set -euo pipefail

BASE_URL="${1:-http://127.0.0.1:3010}"
COOKIE="${TEST_AUTH_COOKIE:-mc_session=mc-sso-session-change-this}"

echo "[radar] trigger"
curl -fsS -X POST -H "Cookie: ${COOKIE}" "$BASE_URL/api/radar/run" | head -c 400; echo

echo "[radar] history"
curl -fsS -H "Cookie: ${COOKIE}" "$BASE_URL/api/radar/history" | head -c 400; echo

echo "[radar] PASS"
