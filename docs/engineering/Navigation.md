# Navigation

## Purpose

Navigation defines how a child, parent, and future deep links move through Wach? Azul!.

For now, navigation should stay simple, local, and M1-focused.

## Current Router

The app uses GoRouter.

Source:

```text
app/lib/app/router.dart
app/lib/core/constants/app_routes.dart
```

Current routes:

- `/` - Splash
- `/onboarding` - Onboarding
- `/child-profile` - Child Profile
- `/world-map` - Family Village / World Map
- `/lesson/yemma` - Yemma Lesson

## Route Rules

- Route paths live in `AppRoutes`.
- Screens should navigate through route constants.
- Avoid string route literals inside screens.
- Keep M1 routes flat until nested navigation is truly needed.
- Do not add future-world routes before the world exists.

## GoRouter Rules

- Use GoRouter as the single app navigation system.
- Keep route definitions readable.
- Prefer explicit routes over clever route generation.
- Add redirects only when product rules require them.
- Keep navigation decisions out of reusable UI components.

## Nested Navigation

Nested navigation is not needed for M1.

Future use cases:

- Parent dashboard tabs.
- Multi-world map shells.
- Settings flows.
- Content libraries.

Rule: introduce nested navigation only when a feature has more than one persistent navigation region.

## Deep Links

Deep links are future scope.

Potential future links:

- Open a world.
- Open a lesson.
- Open a parent progress view.
- Continue daily adventure.

M1 rule: do not build deep-link infrastructure until the local loop is proven.

## Future Scalability

Route shape should leave room for:

```text
/world/:worldId
/world/:worldId/lesson/:lessonId
/parent
/settings
```

But only current M1 route constants should exist in code.

## Review Checklist

Before adding a route, ask:

- Is it inside current scope?
- Does it support the M1 loop?
- Can the child understand how they got there?
- Is the route name clear?
- Is the path in `AppRoutes`?
- Does this need nested navigation yet?
- Is this secretly a future feature?
