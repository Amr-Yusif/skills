---
name: executive-brief-resilient
description: Generate and deliver daily executive brief with fallback behavior when APIs rate-limit or partial data is missing. Use for morning briefs and reliability hardening of brief pipelines.
---

# Executive Brief Resilient

## Brief sections
1. Growth Snapshot
2. Pipeline Health
3. Content/Creative Ops
4. Market Radar
5. Top 3 Actions

## Resilience policy
- If one data source fails: continue with degraded brief + explicit missing section note.
- If API rate-limited: retry with backoff window, then send short fallback alert.
- Never send empty success message.

## Automation
- Use `scripts/brief-fallback-template.sh [source] [retry_window]` when brief generation is degraded.

## Fallback message
- State which data source failed
- State when next retry will happen
- Provide minimum actionable list (3 items)
