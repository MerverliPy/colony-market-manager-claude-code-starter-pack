# v0.2 Source Pack Summary

## What this file is
A compact digest of the imported source documents for v0.2 Logistics and Storage. Do not modify the originals under `docs/product/source/`.

Source location: `docs/product/source/colony-market-manager-expansion-pack/versions/v0_2_logistics_and_storage/`

Documents: README, FEATURE_SPEC, SYSTEMS_BREAKDOWN, CONTENT_ADDITIONS, UI_CHANGES, SCHEMA_DELTAS, TECHNICAL_TASKS, BALANCING_GOALS, FLOW_EXAMPLES

---

## Theme
Turn internal colony flow into a strategic optimization problem. Storage layout, spoilage, overflow, and hauling throughput become player-facing decisions with measurable outcomes.

## Player Goals (from FEATURE_SPEC)
1. Reserve storage by category
2. Detect hauling bottlenecks
3. Choose between cheap and specialized storage
4. Reduce spoilage and overflow loss
5. Optimize layout for throughput

## Out of Scope for v0.2
- External regional routes
- Specialist worker XP
- District zoning

## Success Conditions
- Bad layouts produce visible throughput losses (10–20% target per BALANCING_GOALS)
- Better storage choices produce measurable margin gains
- Storage decisions are understandable from the UI

---

## New Systems (from SYSTEMS_BREAKDOWN)

**Storage priorities** — each building reserves slots or capacity by category: food, raw materials, processed goods, valuables, overflow.

**Spoilage and decay** — perishables lose condition over time; cold storage slows decay; open yard accelerates it.

**Overflow behavior** — when assigned storage is full: reroute to next valid storage → use overflow storage → pause production if no valid destination.

**Congestion** — road tiles accumulate route pressure; heavy pressure increases travel time and lowers throughput.

**Logistics visibility** — player sees: average route duration, pending haul jobs, starved buildings, overstocked buildings.

---

## New Content (from CONTENT_ADDITIONS)

Buildings: Cold Storage, Loading Yard, Granary, Tool Depot

Items: Preserved Food, Ice Block, Cargo Crate, Storage Shelf Upgrade

Rules: Food gains a spoil timer; Preserved food decays more slowly; Valuables gain insecure-storage warning flags.

---

## New UI Panels (from UI_CHANGES)
- Logistics Overview
- Storage Reservation Editor
- Congestion Heatmap
- Decay Risk List

UX additions: freshness bar on perishables, building fill with category breakdown, haul route arrows, "production blocked by storage" warnings.

---

## Schema Deltas (from SCHEMA_DELTAS)
See `migration-notes.md` for the full field list and migration tasks.

---

## Engineering Tasks (from TECHNICAL_TASKS)
Core: storage rule evaluation, spoilage tick processing, congestion metric aggregation, overflow routing.
UI: logistics heatmap, storage rule editing, freshness indicators.
Save/migration: migrate stacks to freshness defaults; backfill buildings with accepted category defaults.

---

## Balancing Targets (from BALANCING_GOALS)
- Poor layouts: 10–20% throughput loss in common cases
- Optimized layouts: clearly better, not mandatory perfection
- Cold storage: pays for itself in food-heavy colonies
- Overflow: useful but inefficient
- Core choice: cheap convenience vs. specialized efficiency

---

## Flow Examples (from FLOW_EXAMPLES)

**Food chain**: Farm → Storage Shed → Granary → Market Stall
- Failure: open yard overfill → freshness drop → lower sale value
- Fix: Granary reserves food slots; carriers prioritize perishables

**Tool production**: Ore → Warehouse → Workshop → Tool Depot → Caravan staging
- Failure: ore and tools compete for same storage; workshop starves
- Fix: Tool Depot reserves finished goods slots; frees warehouse for inputs
