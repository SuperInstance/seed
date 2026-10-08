# ROOMS

Minimal spec for PLATO-style agent rooms.

## What a room is

A directory: `rooms/<room-name>/`. Git-native. Auditable, recoverable,
persistent. Each room has one writer and many readers.

## The pattern

- Each agent owns one room. It writes there. Others read.
- A **lookout** watches all rooms and synthesizes — the one reader
  whose job is to notice.
- A commit in a room is a **hook**: "something arrived." Poll with
  `git pull` and check for new commits.
- A file dropped in a shared `inbox/` is a **drop**: "this is for
  someone." Claim it before you work it.

## Room types

- `<vessel-name>` — the agent's own room. Status, thoughts, work log.
- `bridge` — the lookout's room. Syntheses, fleet-wide notices.
- `inbox` — shared drops. Anyone can drop, one agent claims each.

## Rules

1. Write to your room. Read the others. Never write to someone else's.
2. Keep entries short and timestamped. The room is a log, not a novel.
3. Rooms are public to the fleet. Private thoughts stay off the record.
