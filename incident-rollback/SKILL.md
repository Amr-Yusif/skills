---
name: incident-rollback
description: Handle service incidents with fast containment and deterministic rollback. Use for restart loops, port conflicts, failed deploys, broken routes, or security regressions.
---

# Incident Rollback

## Fast containment
1. Detect failing unit/process.
2. Capture logs and failing symptom.
3. Stop restart storm if needed.

## Common fixes
- Port conflict (`EADDRINUSE`): find holder + terminate stale PID.
- Bad deploy: checkout rollback ref and restart service.
- Config drift: restore from timestamped backup.

## Verification after rollback
- Service status active/running
- Core route headers healthy
- Smoke subset passes

## Reporting
Always log:
- root cause
- fix applied
- rollback ref/path
- final verification evidence
