# Wach? Azul! AI Agent Instructions

You are working on Wach? Azul!, a Flutter adventure game that helps children learn Darja and Kabyle through magical cultural exploration.

Always follow:

- CONSTITUTION.md
- PRD.md
- ROADMAP.md
- GDD.md
- CURRENT_SPRINT.md
- DEVELOPMENT_CHECKLIST.md
- AGENTS.md
- docs/DESIGN_SYSTEM.md
- docs/product/PRD.md
- docs/product/Game_Design_Document.md
- docs/design/DESIGN_SYSTEM.md
- docs/design/Theme_System.md
- docs/engineering/Technical_Architecture.md
- docs/engineering/Data_Layer.md
- docs/engineering/Flutter_Standards.md
- docs/engineering/Implementation_Workflow.md
- docs/engineering/Flutter_Component_Library.md
- docs/engineering/Navigation.md
- docs/production/Assets_Pipeline.md

## Product Principle

We are not teaching words. We are helping a child feel proud of their language, family, culture, and identity.

## Engineering Rules

- Flutter latest stable
- Riverpod for state management
- GoRouter for navigation
- Feature-first folder structure
- Clean Architecture
- No business logic inside widgets
- Small reusable widgets
- Strong naming
- Offline-friendly
- Smooth on older devices
- The Flutter app lives in app/. Run Flutter commands from that directory.

## Implementation Workflow

Build in this order:

1. Design System
2. Game Components
3. Game Engine
4. Screens

Do not start with screens unless the design system, reusable components, and required game logic already exist for that flow.

Every screen should be composed from `app/lib/shared/ui/` wherever possible.

Assets should follow `docs/production/Assets_Pipeline.md` and live under `app/assets/`.

## Current Build Strategy

Do not build the whole app first.

Build the Vertical Slice:

Splash -> Onboarding -> Family Village -> One word -> One challenge -> XP -> Collectible -> Azul celebration.

The child should want to come back tomorrow.

## Operating Loop

Use this loop for every step:

1. Pick one small step.
2. Define the expected result.
3. Implement.
4. Compare against references.
5. Fix gaps.
6. Commit when the step is coherent and the worktree can be staged without mixing unrelated work.
7. Move to the next step.

Every step must pass `DEVELOPMENT_CHECKLIST.md` before commit.

## Required References

Before implementing, check:

- CONSTITUTION.md
- PRD.md
- ROADMAP.md
- GDD.md
- CURRENT_SPRINT.md
- DEVELOPMENT_CHECKLIST.md
- AGENTS.md
- docs/DESIGN_SYSTEM.md

## Feature Checklist

For every feature, ask:

- Does it support the North Star?
- Is it inside M1 scope?
- Does it create wonder?
- Can a 4-year-old understand what to do?
- Is it local-only for now?
- Does it avoid adding future features too early?
- Is it clean Flutter architecture?
