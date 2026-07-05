# Game Components

Screens are composed from reusable game components. New gameplay should add or improve components before creating screen-specific UI.

## Core Component Set

- Primary Button
- Animated Button
- Animated Background
- Floating Cloud
- Character Card
- Adventure Card
- Collectible Card
- World Tile
- Speech Bubble
- Dialogue Box
- XP Widget
- XP Bar
- Reward Popup
- Progress Widget
- Celebration Dialog
- Fox Widget

## Rule

If a screen needs a visual or interaction pattern that could appear again, build it as a shared game component first. Screens orchestrate components, state, and navigation.

## Step 4 Standard

The game component library is a set of Lego blocks. Screens assemble these blocks; they do not invent new component styles.

Before creating a screen-specific widget, ask:

- Can this become a shared component?
- Does it belong in `app/lib/shared/ui/`?
- Does it follow `docs/DESIGN_SYSTEM.md`?
- Can future worlds reuse it?
