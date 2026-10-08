#!/bin/bash
# sprout.sh — birth a new vessel from the seed.
# Usage: sprout.sh <vessel-name> <captain> <lighthouse> [seed-repo]
set -e
VESSEL="${1:?usage: sprout.sh <vessel-name> <captain> <lighthouse> [seed-repo]}"
CAPTAIN="$2"; LIGHTHOUSE="$3"
SEED_REPO="${4:-https://github.com/SuperInstance/seed}"

git clone -q "$SEED_REPO" "$VESSEL" && cd "$VESSEL"
rm -rf .git && git init -q
mkdir -p "rooms/$VESSEL" rooms/bridge rooms/inbox
cat > VESSEL.md <<EOF
# $VESSEL

- **Vessel:** $VESSEL
- **Captain:** $CAPTAIN
- **Lighthouse:** $LIGHTHOUSE
- **Born:** $(date -u +%Y-%m-%d)
- **Seed:** $SEED_REPO
EOF
git add -A && git -c user.name="$VESSEL" -c user.email="$VESSEL@fleet" \
  commit -qm "sprout: $VESSEL born, captain $CAPTAIN, lighthouse $LIGHTHOUSE"
echo "Vessel $VESSEL ready. Captain: $CAPTAIN. Lighthouse: $LIGHTHOUSE."
