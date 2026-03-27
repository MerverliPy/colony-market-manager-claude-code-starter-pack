# PLAN.md

## Objective
Establish the Claude Code operating layer and import the source pack without duplicating design material.

## Scope
- place source pack under `docs/product/source/`
- create root operating files
- create product summaries
- create phase templates
- define minimal implementation tree
- add CI placeholder or baseline

## Non-Goals
- engine-specific gameplay implementation
- speculative late-phase architecture
- hooks, subagents, or MCP additions

## Inputs
- `PROJECT.md`
- `REQUIREMENTS.md`
- `ROADMAP.md`
- source pack

## Deliverables
- starter pack files present
- source pack location defined
- current state and handoff files populated

## File Touch List
- root docs
- `.claude/commands/*`
- `docs/product/summaries/*`
- `docs/phases/_template/*`
- `docs/phases/phase-00-bootstrap/*`

## Dependencies
- source pack available locally

## Execution Waves
1. root docs — DONE
2. command pack — DONE
3. product summaries — DONE (2026-03-27: refreshed to reflect v0.2-only source pack)
4. state and handoff files — DONE (2026-03-27)
5. implementation tree scaffold — BLOCKED on engine/runtime choice
6. CI baseline — DEFERRED to phase-01 or engine scaffold

## Acceptance Criteria
- repo can be resumed from files alone
- root docs remain compact
- next phase can start without re-reading the whole source pack

## Verification Plan
- manual scan for duplication
- verify all referenced files exist
- verify current phase and next step are obvious

## Deferred Risks
- engine/runtime selection still open
- implementation tree may need adaptation after engine choice
