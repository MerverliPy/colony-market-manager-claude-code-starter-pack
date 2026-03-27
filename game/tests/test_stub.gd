## test_stub.gd
## Minimal headless verification that the Godot 4 runtime is correctly wired.
## Run with: godot4 --headless --script game/tests/test_stub.gd
## Exit 0 = pass. Any non-zero exit = fail.
extends SceneTree

func _initialize() -> void:
	print("[STUB] Colony Market Manager: Godot 4 runtime wired OK")
	quit(0)
