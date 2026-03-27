# Systems Breakdown — v0.2 Logistics & Storage

## New systems
### Storage priorities
Each storage building can reserve slots or capacity for:
- food
- raw materials
- processed goods
- valuables
- general overflow

### Spoilage and decay
Perishable items lose condition over time.
Cold storage slows decay significantly.
Improper yard storage accelerates it.

### Overflow behavior
When assigned storage is full:
- reroute to next valid storage
- use overflow storage
- pause production if no valid destination exists

### Congestion
Road tiles and chokepoints accumulate route pressure.
Heavy pressure increases travel time and lowers effective throughput.

### Logistics visibility
The player sees:
- average route duration
- pending haul jobs
- starved buildings
- overstocked buildings
