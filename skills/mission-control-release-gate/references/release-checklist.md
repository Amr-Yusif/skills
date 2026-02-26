# Release Checklist (Mission Control)

## Pre-change
- Confirm backup path exists and is readable.
- Record rollback ref (`git rev-parse --short HEAD`).
- Confirm service unit names (`mission-control`, `openclaw`).

## Verification matrix
1. Unit tests: `npm run test`
2. Build: `npm run build`
3. Smoke: `npx playwright test tests/e2e/smoke.api.spec.ts`
4. Runtime: `systemctl status mission-control --no-pager -l`
5. Route headers:
   - `/overview`
   - `/calendar`
   - `/team`
   - `/office`
   - `/radar`

## Rollback triggers
- Build fail
- Smoke fail
- Service restart loop
- Any critical route non-200/307/308

## Rollback
- Checkout rollback ref
- Restart service
- Re-run smoke subset
