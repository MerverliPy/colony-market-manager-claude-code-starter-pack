#!/usr/bin/env bash
set -euo pipefail

CURRENT_BRANCH="$(git branch --show-current)"

echo "Current branch: $CURRENT_BRANCH"
echo
echo "Checking whether plugin exists on origin/main..."
git fetch origin >/dev/null 2>&1 || true

if git ls-tree -r --name-only origin/main | grep -q '^plugins/labflow-claude-pack/'; then
  echo "FOUND on origin/main"
  echo "Your marketplace ref can stay on main."
  exit 0
fi

echo "NOT found on origin/main"
echo "Switching marketplace ref to current branch: $CURRENT_BRANCH"

python3 - <<PY
import json
from pathlib import Path

path = Path(".claude-plugin/marketplace.json")
data = json.loads(path.read_text())

for plugin in data.get("plugins", []):
    source = plugin.get("source", {})
    if source.get("source") == "git-subdir" and plugin.get("name") == "labflow-claude-pack":
        source["ref"] = "${CURRENT_BRANCH}"

path.write_text(json.dumps(data, indent=2) + "\n")
print("Updated .claude-plugin/marketplace.json")
PY

echo
echo "Validating marketplace..."
claude plugin validate .

echo
echo "Commit and push this change with:"
echo "  git add .claude-plugin/marketplace.json"
echo "  git commit -m \"fix: point plugin marketplace to branch containing plugin\""
echo "  git push origin $CURRENT_BRANCH"
