# Implementation Workflow

Build Wach? Azul! like a game studio, not like a pile of screens.

## Order Of Work

1. Design System
2. Game Components
3. Game Engine
4. Screens

## Design System

Define the visual language before building feature UI: colors, typography, spacing, motion, illustration style, accessibility rules, and child-facing interaction principles.

## Game Components

Create reusable game pieces before composing flows: buttons, word cards, reward tiles, companion panels, progress indicators, map nodes, challenge options, and celebration elements.

The canonical component categories live in `app/lib/shared/ui/` and are specified in `docs/engineering/Flutter_Component_Library.md`.

## Game Engine

Implement the reusable systems that make the game work: lesson state, challenge rules, XP, rewards, collectibles, progression, persistence, audio playback, and daily return hooks.

## Screens

Compose screens from the design system, game components, and engine state. Screens should orchestrate the experience, not hide one-off business logic.
