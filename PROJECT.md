# PROJECT.md

## Product
**Colony Market Manager**

A pixel-art economic colony simulation focused on visible worker activity, storage and inventory decisions, goods processing, trade timing, valuables and hidden value, district growth, and regional market strategy.

## Product Pillars
1. **Visible simulation**
   Workers should visibly move, haul, craft, stock, and sell.
2. **Inventory-centered economy**
   Most strategic decisions should connect to item movement, storage value, trade value, or item specialization.
3. **Progressive colony growth**
   Economic success should be legible through map expansion, district identity, roads, upgrades, and richer goods.
4. **Multiple profit lanes**
   The game should support survival-first stability, bulk export, crafted goods optimization, valuables speculation, prestige luxury play, and regional arbitrage.
5. **Readable consequences**
   Bad layouts, weak staffing, poor timing, and unmanaged risk should create visible and understandable results.

## Core Player Loop
1. place buildings
2. gather and produce goods
3. move and store inventory
4. fulfill local and external demand
5. earn capital
6. expand throughput, specialization, and reach
7. adapt to changing risk, buyers, and regions

## Design Principles
- Expand depth before scale.
- Keep logistics meaningful.
- Use spatial layout as an economic lever.
- Reward preparation and timing, not pure click speed.
- Preserve several viable strategies into late game.
- Make optimization rewarding without requiring perfection.

## Scope for 1.0
The 1.0 target includes:
- visible colony simulation
- strategic logistics and storage
- layered local and external trade
- valuables and hidden value
- specialist workers
- district growth
- risk and resilience
- prestige and luxury play
- world map trade

## Non-Goals
Not in scope for this repo unless deliberately added later:
- full warfare
- deep diplomacy trees
- dynasty inheritance
- romance/social simulation
- museum-victory or tourism-heavy endgames
- direct control of multiple settlements
- fully procedural urban generation
- invasive city-politics systems

## Success Criteria
The project succeeds when:
- the colony is playable and readable early
- logistics, trade, and layout decisions matter by mid game
- industrial, valuables, prestige, and arbitrage play remain competitive by late game
- risk adds drama without routine run-ending randomness
- expansion feels valuable, visible, and strategically earned

## Repo Strategy
This repo should separate:
- **product source material** in `docs/product/source/`
- **durable execution context** in root docs
- **cross-phase system reasoning** in `docs/architecture/`
- **volatile phase planning** in `docs/phases/`

## Technical Priorities
1. deterministic simulation loop
2. stable inventory model
3. predictable hauling and reservations
4. price service that can scale from local to regional demand
5. additive save migrations
6. diagnostics for balance and deadlock detection

## Default Execution Model
- one active phase at a time
- thin command layer
- no hooks initially
- no subagents initially
- file-based handoff, not chat-memory dependence
