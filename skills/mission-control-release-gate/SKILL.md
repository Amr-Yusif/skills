---
name: mission-control-release-gate
description: Run release safety gates for Mission Control with strict backup/rollback discipline. Use before any deploy, service restart, config/proxy/env change, or production verification step.
---

# Mission Control Release Gate

## Mandatory order
1. Backup target files/state.
2. Define rollback command/reference.
3. Run pre-checks.
4. Apply minimal change.
5. Run post-checks.
6. Roll back immediately if any post-check fails.

## Pre-checks
- `npm run test`
- `npm run build`
- `npx playwright test tests/e2e/smoke.api.spec.ts`

## Runtime checks
- `systemctl status mission-control --no-pager -l`
- `curl -I http://127.0.0.1:3010/overview`
- `curl -I https://mc.openclaw.nexusflow.agency/overview`

## Automation
- Run `scripts/release-gate.sh [app_dir] [base_url]` for deterministic gate execution.
- For full stage-by-stage checks, load `references/release-checklist.md`.

## Success criteria
- Tests/build pass
- Service active/running
- Protected routes return expected 307->/login when unauthenticated
- No unresolved incidents in current step
