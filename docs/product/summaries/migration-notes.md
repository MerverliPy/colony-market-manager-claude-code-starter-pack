# migration-notes.md

## Source Pack Coverage
Only the v0.1→v0.2 migration edge has source-backed schema deltas (SCHEMA_DELTAS.md in the v0.2 source pack). All other edges are extrapolated from REQUIREMENTS.md and ROADMAP.md.

## Save Metadata
Persist at minimum:
- `save_version`
- `content_version`
- `world_seed`
- `tick_count`
- `last_migration_applied`

## Migration Edges
- v0.1 -> v0.2: storage reservations, spoilage state, route heatmap cache — **source-backed** (see SCHEMA_DELTAS.md)
- v0.2 -> v0.3: merchant schedules, contract registry, caravan manifests — extrapolated
- v0.3 -> v0.4: appraisal state, authenticity, provenance, restoration progress — extrapolated
- v0.4 -> v0.5: worker XP, traits, preferences, proficiency tables — extrapolated
- v0.5 -> v0.6: district IDs, road graph, neighborhood metadata — extrapolated
- v0.6 -> v0.7: security state, risk flags, event history, hazard timers — extrapolated
- v0.7 -> v0.8: prestige score, collection registry, masterpiece IDs, buyer prestige tiers — extrapolated
- v0.8 -> v0.9: regional market tables, route definitions, settlement relationship state — extrapolated
- v0.9 -> v1.0: tutorial completion state, strategy history metrics, campaign progression flags — extrapolated

## v0.1→v0.2 Schema Deltas (source-backed)
New fields added by v0.2:
- **ItemStack**: `freshness`, `decay_rate_modifier`, `reserved_for_order_id`
- **Building**: `storage_rules`, `accepted_categories`, `spoilage_modifier`, `security_rating`
- **LogisticsMetrics**: `route_id`, `average_ticks`, `congestion_score`, `daily_units_moved`
- **HaulJob**: `source_building_id`, `target_building_id`, `item_id`, `quantity`, `priority`

Migration tasks: migrate existing stacks to freshness defaults; backfill buildings with accepted category defaults.

## Migration Rules
- never silently drop metadata
- prefer additive migrations
- preserve unknown fields when practical
- add migration checks to every save-shape phase
