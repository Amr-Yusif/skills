#!/usr/bin/env bash
set -euo pipefail

SERVICE="${1:-mission-control}"
PORT="${2:-3010}"

echo "[rollback] checking port ${PORT}"
if lsof -i :"$PORT" -n -P >/dev/null 2>&1; then
  echo "[rollback] killing stale holder on ${PORT}"
  fuser -k "${PORT}"/tcp || true
fi

echo "[rollback] restarting ${SERVICE}"
systemctl restart "$SERVICE"
systemctl status "$SERVICE" --no-pager -l | head -n 30
