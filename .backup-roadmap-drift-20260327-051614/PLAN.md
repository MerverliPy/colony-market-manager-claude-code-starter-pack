# PLAN.md — phase-01-engine-and-runtime-foundation

## Objective
Record the engine/runtime decision and scaffold the implementation tree so all subsequent gameplay phases can begin without re-litigating foundational choices.

## Scope
- Document engine/runtime decision criteria
- Record the chosen engine in `decision-log.md`
- Scaffold `game/` directory tree to match engine conventions
- Add CI baseline (test runner invocation, lint stub, or headless run stub)
- Add `.gitignore` or build config stub if required by chosen engine

## Non-Goals
- No gameplay code (no tick loop, no entities, no rendering)
- No architecture docs — those belong to the phases that first implement the systems
- No save format definitions — deferred to v0.1 core loop phase
- No speculative folder structure beyond what the engine requires

## Decision Criteria

### Must-haves
1. **Deterministic tick loop** — the engine must allow a fixed-step simulation loop that produces identical output for identical input. Required by FR-001 and the entire verification strategy.
2. **Headless testability** — simulation logic (tick, item stacks, job queue, prices) must be runnable and assertable without a display or window. Required for CI and for the smallest-scope verification rule.
3. **Full save state control** — the engine must not own or obscure the serialized world state. The game must be able to write and read its own save format (FR-090–FR-095).
4. **2D tile rendering** — the engine must support grid-based tile maps and screen-space UI overlays.

### Strong preferences
5. **Pathfinding primitives** — grid A* or equivalent available in ecosystem, even if not built-in.
6. **Low build complexity** — single command to run tests; single command to run game. Avoids toolchain drift during long development.
7. **Ecosystem stability** — the language and framework should have a credible 5-year maintenance outlook.

### Acceptable trade-offs
- Performance: this is a colony sim, not a real-time action game. 60Hz tick cap with ~200 entities is sufficient.
- Visual fidelity: functional tile art and UI is enough for v0.1–v1.0.
- Multiplayer: explicitly out of scope for all phases.

## Candidate Families (for reference, not prescriptive)
| Family | Headless test | Save control | Tick determinism | Notes |
|---|---|---|---|---|
| Python + Pygame | Yes | Yes | Yes | Easiest headless; large ecosystem |
| TypeScript + browser (Phaser / canvas) | Yes (Node) | Yes | Yes | Web-deliverable |
| Godot (GDScript/C#) | Partial | Yes | Yes | Good 2D; headless harder to set up |
| Rust (Bevy / macroquad) | Yes | Yes | Yes | Fastest; highest iteration cost |

The decision is the user's. Record it in `decision-log.md` once made.

## Files Likely to Change
- `decision-log.md` — engine choice + rationale (mandatory exit deliverable)
- `game/` — scaffolded to engine conventions (e.g. `game/src/`, `game/tests/`, `game/assets/`)
- CI config (e.g. `.github/workflows/ci.yml` or equivalent)
- Build/dependency file (e.g. `requirements.txt`, `package.json`, `Cargo.toml`, `project.godot`)
- `.gitignore`

## Dependencies
- phase-00-bootstrap complete (done)
- User decision on engine/runtime

## Acceptance Criteria
- [ ] Engine/runtime choice is recorded in `decision-log.md` with rationale
- [ ] `game/` directory exists and matches engine conventions
- [ ] At least one headless test stub passes (even a trivial assertion)
- [ ] CI config exists with a passing baseline run
- [ ] Phase-02 (v0.1 core loop) PLAN.md can be opened and reference real file paths

## Verification Plan
See `VERIFY.md`.

## Deferred Risks
- If engine requires significant build tooling, CI setup may need a second pass
- Implementation tree layout may need adjustment after first real module is added
