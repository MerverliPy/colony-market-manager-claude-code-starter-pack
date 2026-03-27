# ROADMAP

## Roadmap Model
This repo uses a two-axis roadmap:

- **execution_id** = the authoritative Claude Code workflow phase slug
- **product_scope** = the gameplay/release scope being planned or implemented
- **source_coverage** = whether the phase is backed by imported product docs or is repo-only scaffolding

## Current Source Reality
The only imported product source material currently available is:

- `docs/product/source/colony-market-manager-expansion-pack/versions/v0_2_logistics_and_storage/`

Do not treat later or earlier gameplay phases as source-backed unless new product docs are imported.

## Execution Phases

| execution_id | name | product_scope | source_coverage | status | depends_on |
|---|---|---|---|---|---|
| phase-00-bootstrap | Bootstrap and source ingest | bootstrap | repo-only | completed | none |
| phase-01-engine-and-runtime-foundation | Engine and runtime foundation | foundation | repo-only | active | phase-00-bootstrap |
| phase-02-v0-2-logistics-and-storage-implementation | Logistics and storage implementation | v0.2 logistics and storage | source-backed | planned | phase-01-engine-and-runtime-foundation |

## Naming Rules
- Execution phase IDs are authoritative for workflow and handoff.
- Product scope labels are descriptive only.
- Do not refer to phases only by number.
- Always use the full execution phase slug in state files, handoffs, commands, and phase plans.

## Planning Constraints
- Keep root docs compact.
- Do not duplicate source-pack content into roadmap files.
- Do not invent missing product truth for v0.1, v0.3+, or v1.0.
- Open new execution phases only when their dependency gate is genuinely met.
