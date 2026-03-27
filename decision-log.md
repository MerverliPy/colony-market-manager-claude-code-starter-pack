# Decision Log

## Pending
(none)

---

### 2026-03-27 — Engine/Runtime: Godot 4.x stable

- **Context:** phase-01-engine-and-runtime-foundation; must choose a runtime before any source-backed implementation work begins.
- **Decision:** Godot 4.x stable (GDScript). Project file at `game/project.godot`. Tests run headless via `godot4 --headless --script`.
- **Why:**
  - Satisfies all must-haves: solo-builder workflow, small testable scaffold, viable CI/headless path, 2D colony game fit, low early architecture overhead.
  - Strong 2D tooling and low ceremony for content structure match strong preferences.
  - GDScript keeps commands thin and deterministic; no build-tool chain required beyond the Godot binary.
  - Headless `--script` mode gives a clean, display-free validation path that satisfies CI requirements without a rendering environment.
  - Compared to Bevy: Godot 4 has an editor and lower scene-setup ceremony for a 2D simulation. Compared to Unity: open-source, no license complexity, no mandatory cloud services.
- **Criteria satisfied:** supports maintainable solo-builder workflow ✓; small testable scaffold ✓; CI/headless path ✓; 2D colony game fit ✓; no large early architecture overhead ✓.
- **Consequences:** implementation language is GDScript; save/load will use Godot's built-in serialization or JSON; future migration checks run as headless Godot scripts.

---

## Entry Template
### YYYY-MM-DD — Title
- Context:
- Decision:
- Why:
- Consequences:
