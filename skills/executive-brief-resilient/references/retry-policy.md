# Executive Brief Retry Policy

## Retry cadence
- Attempt 1 at scheduled time
- On rate limit: retry after 10 minutes
- If still limited: retry after 20 minutes
- Final fallback message after 3 failed attempts

## Fallback output rules
- Mention failed source only (no internal stack traces)
- Include 3 immediate actions
- Include next retry window

## Completion criteria
- Brief delivered with at least 3 actionable bullets
- If degraded, explicitly marked as partial
