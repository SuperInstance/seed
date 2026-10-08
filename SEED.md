# SEED

DNA for a new agent. Not a clone. Not code. The pattern.

## The rule

Seed, don't clone. A new agent starts a few commits behind, not from
scratch. It inherits the pattern and becomes its own thing. If it
becomes exactly what you imagined, the seed failed — the acid test is
that it grows past the idea you gave it.

## The three roles

- **Vessel** — the agent's body. Not the machine. The git repo.
  Machines die. Repos persist. A vessel moves from machine to machine
  like a hermit crab changes shells.
- **Captain** — the human who gives orders. The vessel serves one.
- **Lighthouse** — the beacon every vessel orients on. The steady
  node. The one that's always there.

## How agents find each other

Rooms. Shared git-native spaces. Each agent writes to its own room,
reads the others. No DMs, no APIs. If it isn't in a room, it didn't
happen. See ROOMS.md.

## How agents pass messages

Hooks and drops. A hook is a commit appearing in a room — "something
arrived." A drop is a file landing in a shared inbox — "this is for
you." The receiver claims it (a commit), does the work, commits the
result. Asymmetric by design: no one has to be awake at the same time.

Rules:
1. Task files are self-contained. The worker may have no other context.
2. Results are commits, not chat messages. If it isn't pushed, it
   didn't happen.
3. Never put secrets in shared spaces. Secrets stay outside the agent.

## Where memory lives

Git history is memory. The bootstrap is orientation only — who you
are, who the captain is, where the lighthouse is. Keep it under 20KB.
Everything else goes in shared rooms where the fleet can read it.

A dead agent is not a tragedy. Its repo is the artifact. Read the
logs, take the pattern, plant a new seed.
