# /handoff

Create a durable resume point for the next Claude Code session.

## Read first
- `STATE.md`
- active phase `PLAN.md`
- active phase `VERIFY.md`
- active phase `SUMMARY.md`

## Your job
Compress the current project state into a short, durable handoff.

## Required outputs
Update:
- `PHASE_HANDOFF.md`
- `STATE.md`

## `PHASE_HANDOFF.md` format
- Current Phase
- What Was Finished
- What Is In Progress
- What Failed or Was Deferred
- Next Immediate Step
- Files to Open First
- Watchouts

## `STATE.md` update rules
Refresh:
- Current Goal
- Active Files
- Blockers
- Next 3 Tasks
- Last Verified

## Guardrails
- Keep the handoff short.
- Prefer exact file names over prose.
- Mention unresolved risks that could waste the next session.
- Do not repeat roadmap content.
