# Failure Signatures

## EADDRINUSE: 3010
Symptoms:
- `mission-control.service` restart loop
- logs show `listen EADDRINUSE`

Fix:
- Kill stale holder on 3010
- Restart service
- Verify status + route headers

## Gateway token mismatch
Symptoms:
- `openclaw status --all` shows unauthorized/token mismatch

Fix:
- Confirm context (`amr` HOME)
- Verify single gateway runtime path
- Restart service and re-run security audit

## 502 on public domain
Symptoms:
- domain route 502 while local app healthy

Fix:
- check reverse-proxy mapping and target port
- validate upstream health
- keep domain role mapping explicit
