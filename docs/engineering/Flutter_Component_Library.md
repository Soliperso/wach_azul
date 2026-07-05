# Flutter Component Library

## Purpose

Wach? Azul! should be built as a mini game framework inside Flutter. Screens are not the foundation. Reusable systems and components are the foundation.

This library lives under:

```text
app/lib/shared/ui/
```

## Folder Structure

```text
shared/
  ui/
    buttons/
    cards/
    dialogs/
    typography/
    spacing/
    icons/
    progress/
    animations/
    rewards/
    speech/
    theme/
```

## Build Order

1. Design System
2. Game Components
3. Theme System
4. Navigation
5. Game Engine
6. Screens

Do not create a one-off screen when a reusable component or engine system is missing.

## Component Categories

### Buttons

Reusable action controls:

- Primary Button
- Animated Button
- Audio Button
- Continue Button
- Locked Button
- Parent-safe action button

### Cards

Reusable game object surfaces:

- Character Card
- Adventure Card
- World Tile
- Collectible Card
- Lesson Word Card
- Challenge Option Card

### Dialogs

Reusable overlays:

- Celebration Dialog
- Reward Dialog
- Gentle Mistake Dialog
- Parent Confirmation Dialog

### Typography

Reusable text helpers:

- Display word style.
- Strong title style.
- Supporting text style.
- Child-readable label style.

### Spacing

Shared spacing tokens:

- XS
- SM
- MD
- LG
- XL
- XXL

### Icons

Reusable symbolic elements:

- Fox Widget
- Audio icon treatment.
- Lock icon treatment.
- XP icon treatment.
- Reward icon treatment.

### Progress

Reusable progress indicators:

- XP Widget
- XP Bar
- Progress Widget
- Lesson step indicator
- World progress indicator

### Animations

Reusable motion tokens and wrappers:

- Button pulse.
- Animated Background.
- Floating Cloud.
- Word reveal.
- Reward reveal.
- Celebration scale.
- Companion entrance.

### Rewards

Reusable reward surfaces and logic hooks:

- Reward Popup
- Collectible display
- XP burst
- Unlock state

### Speech

Reusable dialogue surfaces:

- Speech Bubble
- Dialogue Box
- Companion line
- Family voice line
- Prompt bubble

## Step 4 Game Component Library

Step 4 exists to prevent screen-first development. The expected result is a reusable component library that lets future screens be assembled like Lego blocks.

Required first-wave blocks:

- PrimaryButton
- AdventureCard
- CharacterCard
- SpeechBubble
- RewardPopup
- XPBar
- WorldTile
- FoxWidget
- AnimatedBackground
- DialogueBox
- FloatingCloud
- CollectibleCard

Each block should be small, readable, reusable, and aligned with `docs/DESIGN_SYSTEM.md`.

## Mini Game Framework Systems

### Animation System

Centralizes durations, curves, reveal patterns, celebration motion, and reduced-motion decisions.

### Dialogue System

Controls speaker, line text, pacing, audio hooks, and child-friendly prompt display.

### Reward System

Controls XP, collectibles, unlocks, celebration copy, and persistence hooks.

### Lesson Engine

Controls lesson state, vocabulary, challenge rules, mistake handling, completion, and return-to-map behavior.

### Adventure Engine

Controls worlds, map nodes, locked states, progression, daily return hooks, and future world assembly.

## Screen Rule

Screens should import the shared UI library and compose:

```dart
import '../../shared/ui/ui.dart';
```

A screen may own layout and navigation. It should not own reusable UI language or business rules.
