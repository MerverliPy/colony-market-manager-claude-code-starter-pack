# Schema Deltas — v0.2 Logistics & Storage

## New fields
### ItemStack
- freshness
- decay_rate_modifier
- reserved_for_order_id

### Building
- storage_rules
- accepted_categories
- spoilage_modifier
- security_rating

### LogisticsMetrics
- route_id
- average_ticks
- congestion_score
- daily_units_moved

### HaulJob
- source_building_id
- target_building_id
- item_id
- quantity
- priority
