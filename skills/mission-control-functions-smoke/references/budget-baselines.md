# Performance Budget Baselines

## Current defaults
- page p95 <= 2500ms
- api p95 <= 2500ms
- mutation p95 <= 10000ms

## Tracked outputs
- `docs/PERF_SNAPSHOT.md`
- `docs/PERF_HISTORY.json`

## Interpretation
- page p95: route rendering + auth redirect path
- api p95: critical endpoint readiness
- mutation p95: write/action latency (telemetry/radar run)

## Gate policy
- Any budget breach = fail-fast
- open incident + rollback if breach follows a deploy
