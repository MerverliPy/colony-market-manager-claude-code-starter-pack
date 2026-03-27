# VERIFY.md — phase-01-engine-and-runtime-foundation

## Verification strategy
Smallest-scope first. All checks are file-existence or single-command checks — no gameplay logic to test yet.

## Checks

### 1. Decision recorded
- [x] `decision-log.md` contains an entry for engine/runtime choice
- [x] Entry names the engine, language, test runner, and brief rationale
- [x] Entry references the must-have criteria from PLAN.md that were satisfied

### 2. Implementation tree exists
- [x] `game/` directory exists
- [x] Directory structure matches the chosen engine's conventions (`game/project.godot`, `game/tests/`)
- [x] No placeholder files left from a different engine family

### 3. Headless test stub passes
- [x] Test file exists: `game/tests/test_stub.gd`
- [ ] Running `godot4 --headless --script game/tests/test_stub.gd` produces exit 0 — **pending live run**
- [ ] Output is deterministic across two consecutive runs — **pending live run**

### 4. CI baseline passes
- [x] CI config file exists: `.github/workflows/ci.yml`
- [x] CI runs `godot4 --headless --script game/tests/test_stub.gd`
- [ ] CI run completes without error on clean checkout — **pending first push**

### 5. Build/dependency file present
- [x] `game/project.godot` exists at `game/`
- [x] A new contributor can install deps and run tests: (1) install Godot 4.3, (2) `godot4 --headless --script game/tests/test_stub.gd`

## Pass condition
All five checks pass. Record results in this file before closing the phase.

## Results

| Check | Status | Notes |
|---|---|---|
| Decision recorded | PASS | `decision-log.md` entry 2026-03-27 |
| Implementation tree | PASS | `game/project.godot`, `game/tests/test_stub.gd` |
| Headless stub | PENDING | Requires Godot 4.3 binary |
| CI baseline | PENDING | Requires first push to trigger workflow |
| Build/deps file | PASS | `game/project.godot` present |
