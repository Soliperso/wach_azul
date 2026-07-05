# Wach? Azul!

Wach? Azul! is a studio-first game project for building a magical language-learning adventure for children of immigrant families.

The repository is organized as a small game studio before it is organized as an app. Root files define the project constitution and agent rules, `docs/` holds the production bible, and `app/` contains the Flutter game.

## Studio Layout

```text
wach-azul/
  README.md
  AGENTS.md
  CONSTITUTION.md
  docs/
    product/
    engineering/
    design/
    ai/
    sprints/
  app/
```

## Phase 0 - Production Foundation

Current step: Repository Structure.

Deliverables:

- Constitution
- PRD
- Roadmap
- GDD
- AGENTS
- Design System

Checkpoint question:

Can any new AI engineer understand the project in 30 minutes?

If the answer is no, improve documentation before adding implementation scope.

## 30-Minute Onboarding Path

1. Read `CONSTITUTION.md` for the North Star.
2. Read `PRD.md` for the product goal and M1 scope.
3. Read `ROADMAP.md` for phase order.
4. Read `GDD.md` for the game loop.
5. Read `docs/DESIGN_SYSTEM.md` for visual rules.
6. Read `AGENTS.md` for implementation rules.
7. Work inside `app/` only after the current step is clear.

## Build Workflow

Build in this order:

1. Design System
2. Game Components
3. Game Engine
4. Screens

Screens should come last so the game stays coherent, reusable, and easy to expand.

## App

Run Flutter commands from `app/`.

```sh
cd app
flutter pub get
flutter test
flutter run
```
