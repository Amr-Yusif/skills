---
name: radar-ops
description: Operate Mission Control radar workflows (trigger, history review, latency checks, and signal-to-action summarization). Use for OSS trend scans, GitHub radar runs, and radar reliability checks.
---

# Radar Ops

## Core flow
1. Trigger run via `/api/radar/run`.
2. Read history via `/api/radar/history`.
3. Validate status, duration, and delivery fields.
4. Summarize top signals into actions.

## Automation
- Run `scripts/radar-run-check.sh [base_url]` to trigger + verify radar history quickly.
- For signal quality triage and escalation criteria, load `references/radar-triage.md`.

## Health checks
- Radar trigger endpoint reachable (200/307)
- History endpoint returns entries
- Latest run duration within expected range (<10s in smoke)

## Output format
- Top 3 signals
- Why each matters for UAE/KSA growth ops
- Immediate action for today
