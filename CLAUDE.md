# CLAUDE.md

## Objective
Build Colony Market Manager as a phased economic colony sim using the source planning pack in `docs/product/source/` and the derived execution docs in this repo.

## Working Rules
- Treat `docs/product/source/` as product source material. Do not overwrite it.
- Keep root docs compact and durable.
- Put volatile planning detail in `docs/phases/<active-phase>/`.
- Update `STATE.md` and `PHASE_HANDOFF.md` at the end of meaningful work.
- Verify the smallest relevant scope first.
- Do not broaden scope beyond the active phase without recording the change in `decision-log.md`.

## Priorities
1. simulation correctness
2. inventory clarity
3. trade depth
4. save compatibility
5. readable verification
6. late-game variety

## File Boundaries
- `CLAUDE.md`: operating rules only
- `PROJECT.md`: product identity, pillars, non-goals
- `REQUIREMENTS.md`: durable requirement map
- `ROADMAP.md`: phase order, dependencies, release gates
- `STATE.md`: current phase, next tasks, blockers
- `PHASE_HANDOFF.md`: compact resume note
- `docs/architecture/`: cross-phase system decisions
- `docs/phases/`: active phase plans, verify notes, summaries
- `docs/product/source/`: imported source pack
- `docs/product/summaries/`: compact derived summaries
- `game/`: implementation
- `tools/`: scripts for migration, balancing, diagnostics

## Implementation Rules
- Prefer additive migrations.
- Avoid cross-system rewrites during a single phase.
- Update architecture docs only when cross-phase behavior changes.
- Keep commands thin and deterministic.
- Start with no hooks and no subagents.

## Verification Rules
- Define acceptance before implementation.
- Verify the smallest scope that can falsify the change.
- Record recurring failures durably.
- Migration checks become mandatory once save data exists.

## Documentation Rules
- Summarize deltas; do not duplicate source docs.
- Keep handoff notes short and actionable.
- Archive stale phase notes instead of bloating root context.
