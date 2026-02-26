#!/usr/bin/env bash
set -euo pipefail

SOURCE="${1:-API rate limit}"
RETRY_WINDOW="${2:-30 minutes}"

cat <<EOF
⚠️ Executive brief delayed: ${SOURCE}
- next retry: within ${RETRY_WINDOW}
- fallback actions now:
  1) review pending approvals and blocked packets
  2) check top funnel drop stage and assign owner
  3) prioritize top 3 tasks for today
EOF
