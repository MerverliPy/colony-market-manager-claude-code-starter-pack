# /phase-plan

Refresh or create an executable plan for the active phase.

## Read first
- `STATE.md`
- `ROADMAP.md`
- `REQUIREMENTS.md`
- `PHASE_HANDOFF.md`
- active phase folder under `docs/phases/`
- only the architecture docs relevant to the active phase
- only the source-pack docs needed for this phase

## Your job
Produce a phase plan that is narrow, testable, and resumable.

## Required outputs
Update or create:
- `docs/phases/<active-phase>/PLAN.md`
- `docs/phases/<active-phase>/VERIFY.md`
- `docs/phases/<active-phase>/SUMMARY.md` stub if missing
- `STATE.md` if the phase goal or next tasks changed

## Planning rules
- Use the current roadmap phase as the authority for scope.
- Keep the plan focused on the smallest end-to-end slice that proves the phase.
- Separate **scope** from **non-goals**.
- Create execution waves only when they reduce merge risk or context bloat.
- Name the exact files likely to change.
- Define acceptance before implementation.
- If a dependency is missing, record it explicitly instead of silently broadening scope.

## Output format for `PLAN.md`
- Objective
- Scope
- Non-Goals
- Inputs
- Deliverables
- File Touch List
- Dependencies
- Execution Waves
- Acceptance Criteria
- Verification Plan
- Deferred Risks

## Output format for `VERIFY.md`
- Automated Checks
- Manual Checks
- Edge Cases
- Migration Checks
- Pass/Fail Log

## Guardrails
- Do not restate the full product design.
- Do not plan future phases in detail.
- Do not introduce hooks, subagents, or extra commands unless current pain clearly justifies them.
- Keep the plan compact enough to scan quickly.
