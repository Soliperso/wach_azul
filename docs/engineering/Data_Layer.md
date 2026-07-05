# Data Layer

## Purpose

The data layer defines the game objects before UI is built.

Step 7 rule: create models, no UI.

## Foundation Models

Source:

```text
app/lib/shared/models/
```

Models:

- Child
- Word
- Lesson
- Adventure
- Collectible
- Reward
- Progress
- Fox
- World

## Rules

- Models should be small and immutable.
- Models should describe the game, not widgets.
- M1 data stays local-only.
- Persistence belongs behind repositories.
- UI should consume models through providers or controllers.

## M1 Seed Data

M1 starts with:

- World: Family Village
- Fox: Azul
- Word: Yemma
- Lesson: Yemma
- Collectible: Woven Heart
- Reward: 15 XP plus Woven Heart
- Adventure: Family Village First Adventure

## Future Scalability

These models should allow future worlds like Food Market, Story Mountain, and Animal Valley without rewriting the screen layer.
