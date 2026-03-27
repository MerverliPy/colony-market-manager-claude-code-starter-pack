# ROADMAP.md

## Objective
Build Colony Market Manager in phase-sized releases that minimize rework and keep Claude Code context tight.

## Planning Rules
- Only one active implementation phase at a time.
- Each phase gets its own `PLAN.md`, `VERIFY.md`, and `SUMMARY.md`.
- Exit a phase only when acceptance is met or deferred items are explicitly recorded.
- Save migrations are mandatory for any phase that changes persisted schema.
- Use architecture docs only for cross-phase systems.

## Global Dependency Order
1. stable item stacks and storage addressing
2. job queue and hauling determinism
3. market price service
4. building unlock and dependency service
5. worker stats and progression service
6. district and map partition model
7. event framework
8. region model and route solver

## Phase 00 — Bootstrap and Source Ingest
**Goal:** Establish the Claude Code operating layer and import the source pack without duplication.

Outputs:
- root operating files
- phase folders
- product summaries
- CI baseline
- migration policy stub

Entry:
- source pack available

Exit:
- repo can be resumed from files alone
- current phase and next task are explicit
- source material is preserved under `docs/product/source/`

## Phase 01 — v0.1 Frontier Trade Post MVP
**Goal:** Ship the playable core loop.

Scope:
- one map
- one settlement
- building placement
- worker simulation
- item stacks
- crafting
- storage
- local market selling
- basic price fluctuation
- save/load

Entry:
- phase 00 complete

Exit:
- colony loop is playable
- normal play does not deadlock
- item flow is legible
- processed goods feel like the first profitable upgrade

Key files:
- `docs/phases/phase-01-v0-1-core-loop/`
- `docs/architecture/core-simulation.md`
- `docs/architecture/inventory-and-hauling.md`
- `docs/architecture/price-and-demand.md`
- `docs/architecture/save-migration.md`

## Phase 02 — v0.2 Logistics and Storage
**Goal:** Turn internal flow into a strategic subsystem.

Scope:
- storage priority rules
- spoilage and decay
- cold storage and granary logic
- overflow handling
- hauling queue visualization
- route congestion effects

Entry:
- phase 01 stable

Exit:
- bad layouts create visible losses
- better storage choices create measurable margin gains
- storage decisions are understandable from the UI

Key focus:
- reservations
- freshness
- throughput diagnostics

## Phase 03 — v0.3 Trade Routes and Merchants
**Goal:** Make trade timing and buyer selection matter.

Scope:
- caravan schedules
- merchant categories
- route capacity
- contract board
- rotating demand
- shipment reservation and manifests

Entry:
- phase 02 stable

Exit:
- buyer choice materially changes profit
- local selling remains viable for liquidity
- shipment prep rewards storage discipline
- scheduling creates anticipatory play

Key focus:
- merchant scheduler
- contract generation
- outbound inventory locking

## Phase 04 — v0.4 Valuables and Appraisal
**Goal:** Introduce hidden value and collector economics.

Scope:
- unidentified item states
- appraisal workflow
- provenance and authenticity
- restoration
- vault storage
- collector buyers
- relic sets

Entry:
- phase 03 stable

Exit:
- valuables behave materially differently from ordinary goods
- appraisal produces strategic information, not just bigger numbers
- collector play is strong but optional

Key focus:
- item metadata expansion
- reveal pipeline
- collector pricing

## Phase 05 — v0.5 Colonist Growth and Specialization
**Goal:** Make workers strategic assets.

Scope:
- XP
- proficiency
- traits
- specialist roles
- training buildings
- assignment preferences

Entry:
- phase 04 stable

Exit:
- staffing choices matter economically
- specialists are worth protecting
- early generalists remain useful
- morale nudges choices without becoming tedious

Key focus:
- assignment scoring
- workforce UI
- productivity diagnostics

## Phase 06 — v0.6 District Expansion
**Goal:** Make colony growth physically visible and spatially strategic.

Scope:
- district zoning
- roads
- district bonuses
- neighborhood visuals
- expansion buildings

Entry:
- phase 05 stable

Exit:
- layout decisions have meaningful productivity effects
- growth is visually legible
- specialized districts outperform random layouts
- compact mixed-use play remains viable early

Key focus:
- district recalculation
- road graph
- map expansion unlocks

## Phase 07 — v0.7 Events, Threats, and Risk
**Goal:** Add friction, resilience, and defensive planning.

Scope:
- theft events
- weather/resource disruptions
- market crashes and spikes
- caravan delays
- security coverage
- insurance

Entry:
- phase 06 stable

Exit:
- risk changes strategy without feeling arbitrary
- defensive planning has real economic value
- diversified colonies feel more resilient
- prepared players can recover from setbacks

Key focus:
- event scheduler
- coverage models
- safe application of temporary shocks

## Phase 08 — v0.8 Luxury Economy and Prestige
**Goal:** Create a distinct late-game status economy.

Scope:
- prestige score
- noble buyers
- masterpiece crafting
- exhibitions and festivals
- collection curation
- luxury market classes

Entry:
- phase 07 stable

Exit:
- luxury play feels distinct from industry play
- prestige unlocks advantages gradually
- curation and timing matter as much as quantity
- multiple late-game strategies remain viable

Key focus:
- prestige service
- elite buyer unlocks
- exhibition effects

## Phase 09 — v0.9 World Map and Regional Markets
**Goal:** Expand the economy beyond one settlement.

Scope:
- world map
- region unlocks
- regional market tables
- long-range contracts
- import/export routing
- relationship hooks

Entry:
- phase 08 stable

Exit:
- regional differences materially change trade choices
- route duration adds planning depth
- imports solve real shortages without trivializing production
- short safe routes and long risky routes are both valid

Key focus:
- route service
- regional pricing
- arrival resolution

## Phase 10 — v1.0 Full Economic Colony Release
**Goal:** Integrate all systems into a cohesive first full release.

Scope:
- cross-system tuning
- migration regression
- deadlock and route validation
- dashboard polish
- tutorial/advisor systems
- accessibility/readability pass
- final content cleanup

Entry:
- phases 01 through 09 complete or explicitly deferred

Exit:
- multiple long-form strategies are viable
- no single subsystem eclipses all others
- full migration chain is verified
- onboarding supports first-time players
- the colony feels alive, valuable, and expandable

## Release Gate Policy
A phase is release-ready only when:
- implementation scope matches the phase plan
- verification notes record pass/fail honestly
- deferred items are named
- state and handoff files are current
- next-phase prerequisites are explicit

## Smallest Acceptable Delivery
If time is tight:
- finish Phase 00
- complete Phase 01 end to end
- build only the minimum scaffolding for later phases
- avoid speculative abstractions
