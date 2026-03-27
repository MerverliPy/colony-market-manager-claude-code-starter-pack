# REQUIREMENTS.md

## Purpose
This file converts the source expansion pack into a durable Claude Code requirement map. It is intentionally shorter than the source material and is used to anchor planning, implementation, and verification.

## Requirement Groups

### RG-01 Simulation Core
**Goal:** The world updates deterministically and remains inspectable.

Requirements:
- FR-001 The game must run on a deterministic tick loop.
- FR-002 Building placement must validate terrain, adjacency, and rule constraints.
- FR-003 Workers must resolve jobs through a stable queue and pathfinding model.
- FR-004 Item pickup, transport, dropoff, crafting, and selling must be observable.
- FR-005 Normal play should not deadlock under expected early and mid-game conditions.

Validation:
- repeatable tick tests
- deadlock scenario tests
- job queue inspection tools

### RG-02 Inventory and Storage
**Goal:** Inventory is the strategic center of the game.

Requirements:
- FR-010 Items must support stack split, merge, movement, and storage addressing.
- FR-011 Buildings must expose storage capacity, accepted categories, and occupancy state.
- FR-012 Storage rules must support category reservation and priority decisions.
- FR-013 Spoilage, decay, overflow, and freshness must be representable where applicable.
- FR-014 Hauling congestion and poor storage layout must create measurable throughput losses.
- FR-015 Storage state must be legible through overlays, hover details, and alerts.

Validation:
- stack integrity tests
- storage rule tests
- spoilage and overflow tests
- congestion comparison scenarios

### RG-03 Economy and Trade
**Goal:** Selling choices, buyer timing, and route planning matter.

Requirements:
- FR-020 The game must provide a basic local price service in v0.1.
- FR-021 Prices must be able to react to supply, demand, and buyer modifiers.
- FR-022 Local sales must remain viable for liquidity across the full game.
- FR-023 Merchant schedules, route capacity, and contract generation must support export planning.
- FR-024 Shipment reservation and manifesting must protect outbound goods from accidental reuse.
- FR-025 Buyer classes must create materially different profit outcomes.
- FR-026 Regional market tables must enable late-game arbitrage and import planning.

Validation:
- price response tests
- contract fulfillment tests
- shipment reservation tests
- regional compare simulations

### RG-04 Valuables and Item Metadata
**Goal:** Hidden-value goods create a distinct, optional, high-skill lane.

Requirements:
- FR-030 Item metadata must support rarity, authenticity, provenance, condition, and origin where needed.
- FR-031 Some items must begin unidentified and reveal value through appraisal.
- FR-032 Restoration must change item state and sale potential.
- FR-033 Vault-style storage and collector-specific selling must exist before valuables scale.
- FR-034 Set completion and collector appeal must influence sale decisions.
- FR-035 Valuables must be strategically strong without making industrial play obsolete.

Validation:
- metadata persistence tests
- appraisal reveal tests
- restoration progression tests
- collector pricing tests

### RG-05 Workers and Assignment
**Goal:** Colonists become long-term strategic assets.

Requirements:
- FR-040 Workers must support XP, role proficiency, traits, and assignment preferences.
- FR-041 Specialist roles must unlock through training or progression.
- FR-042 Assignment logic must prefer workers whose traits and proficiencies fit the task.
- FR-043 Workforce management UI must support filtering, sorting, and inspection.
- FR-044 Staffing choices must create meaningful economic differences without excessive micromanagement.

Validation:
- XP progression tests
- trait modifier tests
- assignment scoring tests
- productivity comparison diagnostics

### RG-06 Spatial Growth and Districts
**Goal:** Colony growth becomes physically legible and economically meaningful.

Requirements:
- FR-050 Roads must alter movement efficiency.
- FR-051 Districts must support assignment, recalculation, and bonus aggregation.
- FR-052 Layout choices must affect throughput and specialization value.
- FR-053 Expansion must visibly improve the colony map.
- FR-054 Specialized districts must outperform random layouts, while compact mixed-use layouts remain viable early.

Validation:
- movement modifier tests
- district bonus tests
- layout comparison scenarios
- expansion unlock tests

### RG-07 Risk and Resilience
**Goal:** The economy cannot be solved into a static machine.

Requirements:
- FR-060 The game must support event scheduling and safe application of temporary world changes.
- FR-061 Risk systems must affect routing, prices, item condition, inventory safety, or building availability.
- FR-062 Security coverage and insurance must mitigate losses.
- FR-063 Events must scale with colony wealth, stock composition, or strategic exposure.
- FR-064 Losses should sting without routinely ending runs outright.
- FR-065 Some risks should also create upside opportunities.

Validation:
- event scheduler tests
- security coverage tests
- insurance payout tests
- resilience scenario runs

### RG-08 Prestige and Luxury Economy
**Goal:** Late-game strategy is not just more of the same production.

Requirements:
- FR-070 Prestige must accumulate from colony quality, curation, or events.
- FR-071 Prestige must affect buyer pools, premiums, or event generation.
- FR-072 Premium low-volume goods must support a distinct luxury strategy.
- FR-073 Exhibitions, festivals, collections, or masterpieces must create timing-based decisions.
- FR-074 Industrial play must still support colony baseline even when luxury systems are active.

Validation:
- prestige progression tests
- elite buyer unlock tests
- exhibition effect tests
- late-game strategy comparison runs

### RG-09 World Map and Regions
**Goal:** The colony becomes one node in a larger economic world.

Requirements:
- FR-080 Regions must have distinct supply and demand profiles.
- FR-081 World routes must model travel time, arrival resolution, and capacity.
- FR-082 Imports must solve real shortages without trivializing production chains.
- FR-083 Regional differences must materially change trade decisions.
- FR-084 Short safe routes and long risky routes must both remain viable.
- FR-085 Goods should carry origin metadata where required by pricing or provenance logic.

Validation:
- route resolution tests
- regional price generation tests
- import/export chain tests
- route profitability comparisons

### RG-10 Save and Migration
**Goal:** Progress survives version growth.

Requirements:
- FR-090 Saves must explicitly track `save_version`, `content_version`, `world_seed`, `tick_count`, and `last_migration_applied`.
- FR-091 Migrations should be additive wherever practical.
- FR-092 Unknown fields should be preserved where reasonable for forward compatibility.
- FR-093 No migration may silently drop item metadata.
- FR-094 Migration checks become mandatory once any persisted save format exists.
- FR-095 Each phase that changes save shape must document schema deltas and migration expectations.

Validation:
- migration tests per version edge
- save round-trip tests
- metadata preservation tests

## Non-Functional Requirements
- NFR-001 Root context must remain compact.
- NFR-002 Phase planning must be resumable from files alone.
- NFR-003 Verification must favor smallest-scope falsification before broad regression.
- NFR-004 Commands must be deterministic and narrow in responsibility.
- NFR-005 The repo should avoid unnecessary hooks, subagents, and duplicated docs.
- NFR-006 Late-game balance should be testable through scripts or simulations, not intuition alone.

## Version Mapping
- v0.1: RG-01, RG-02 baseline, RG-03 baseline, RG-10 baseline
- v0.2: RG-02 depth, RG-10 migration edge
- v0.3: RG-03 depth, RG-02 interaction, RG-10 migration edge
- v0.4: RG-04, RG-03 modifier expansion, RG-10 migration edge
- v0.5: RG-05, RG-10 migration edge
- v0.6: RG-06, RG-05 interaction, RG-10 migration edge
- v0.7: RG-07, RG-02 and RG-03 risk hooks, RG-10 migration edge
- v0.8: RG-08, RG-04 prestige interaction, RG-10 migration edge
- v0.9: RG-09, RG-03 regional expansion, RG-10 migration edge
- v1.0: system integration, regression, onboarding, final balance

## Change Control
Only update this file when:
- scope changes at the product level
- a requirement is promoted, cut, or materially redefined
- verification strategy for a requirement group changes

Put phase detail in phase folders, not here.
