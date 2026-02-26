---
name: mission-control-functions-smoke
description: Run focused smoke checks for Mission Control critical functions/APIs and enforce response-status and latency budgets. Use after code changes and before release sign-off.
---

# Mission Control Functions Smoke

## Scope
Pages:
- /overview /calendar /team /office /radar

APIs:
- /api/cron
- /api/proactive/plan
- /api/outbound
- /api/outbound/audit
- /api/overview/metrics
- /api/ghl/metrics
- /api/content/metrics
- /api/radar/history

Mutations:
- /api/telemetry/ingest
- /api/radar/run

## Automation
- Run `scripts/functions-smoke.sh [app_dir]`.
- For budget baselines and gate interpretation, load `references/budget-baselines.md`.

## Gate
- status in {200,307,308}
- page/api p95 <= 2500ms
- mutation p95 <= 10000ms
- fail-fast on budget breach
