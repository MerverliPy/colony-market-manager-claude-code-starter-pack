# dependency-map.md

## Source Pack Coverage
This map is derived from product design intent (REQUIREMENTS.md, ROADMAP.md). It is not sourced from any imported source pack. Only v0.2 has source pack documents; see `v0_2-source-pack.md`.

## Core Cross-Phase Dependencies
- **Inventory and hauling** underpin storage priorities, export contracts, vault routing, district throughput, theft/spoilage incidents, and route shipment assembly.
- **Price model** underpins merchant demand, collector premiums, prestige behavior, and regional arbitrage.
- **Item metadata** underpins provenance, restoration, contraband/risk hooks, masterpiece status, and region origin tags.
- **Worker assignment model** underpins specialist roles, district staffing bonuses, security coverage, and route staffing.

## Recommended Foundation Order
1. stable item stacks and storage addressing
2. deterministic hauling and job queue behavior
3. market price service
4. building unlock/dependency service
5. worker progression service
6. district/map partition model
7. event framework
8. region model and route solver
