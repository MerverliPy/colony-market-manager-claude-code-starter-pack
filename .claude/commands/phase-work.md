# /phase-work

Execute the active phase plan without expanding scope.

## Read first
- `STATE.md`
- active phase `PLAN.md`
- active phase `VERIFY.md`
- only the architecture docs and source docs named in the plan

## Your job
Implement the next unfinished execution wave for the active phase.

## Required behavior
- Work only on items that are inside the active phase scope.
- Prefer the smallest end-to-end slice over broad partial scaffolding.
- Update code, tests, and docs together when the slice needs all three.
- Keep migrations additive.
- Record any scope pressure in the phase `SUMMARY.md` instead of silently absorbing it.

## Required outputs
Update:
- implementation files
- tests or diagnostics
- `docs/phases/<active-phase>/SUMMARY.md`
- `STATE.md`

## Summary format
Append:
- What changed
- What was verified
- What remains
- New risks
- Deferred items

## Guardrails
- Do not start the next phase.
- Do not rewrite stable systems unless the plan explicitly requires it.
- Do not duplicate architecture reasoning into phase notes.
- If verification fails, record it honestly and stop broadening work.
