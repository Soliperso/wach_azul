# Theme System

## Purpose

The theme system makes Wach? Azul! consistent across every screen, component, animation, sound, and interaction.

It defines shared decisions for:

- Colors
- Typography
- Spacing
- Elevation
- Border radius
- Animation durations
- Haptic feedback rules
- Audio rules

## Flutter Source

Theme tokens live in:

```text
app/lib/shared/ui/theme/
```

The app theme is assembled in:

```text
app/lib/app/theme/app_theme.dart
```

## Colors

Canonical color tokens:

- Sky Blue: calm backgrounds and open space.
- Deep Blue: primary UI actions.
- Story Blue: major titles and story emphasis.
- Sun Cream: app background.
- Warm Sand: speech and soft panels.
- Sun Gold: rewards and progress warmth.
- Soft Sky: XP and calm card surfaces.
- Clay Orange: celebration and companion warmth.
- Leaf Green: success and gentle positive feedback.
- Night Brown: grounding and character warmth.
- Text Primary: readable text.

Rules:

- No screen should invent a new dominant color without updating the design system.
- Use color to clarify state, reward, and emotion.
- Avoid overstimulating high-saturation combinations.

## Typography

Primary typeface: Nunito.

Rules:

- Use rounded, readable, child-safe type.
- Use heavy weights for important labels and celebration.
- Keep copy short.
- Do not rely on reading alone; pair text with visual cues when needed.

## Spacing

Use shared spacing tokens:

- XS: 4
- SM: 8
- MD: 12
- LG: 18
- XL: 24
- XXL: 28

Rules:

- Child-facing layouts need room to breathe.
- Use consistent spacing before inventing one-off values.
- Keep tappable areas large and forgiving.

## Elevation

Use elevation sparingly.

Rules:

- Prefer color, spacing, and shape over heavy shadows.
- Use elevation for temporary overlays and important popups.
- Avoid dashboard-like stacked cards.

## Border Radius

Default radius: 8.

Rules:

- Use small radii for reusable UI surfaces.
- Use larger radii only for characterful or celebratory objects.
- Keep interactive elements visually consistent.

## Animation Durations

Canonical durations:

- Fast: 180ms
- Normal: 250ms
- Celebration: 500ms

Rules:

- Animation should guide attention.
- Reward animation may be more expressive.
- Learning prompts should remain calm.
- Avoid fast flashing or constant motion.

## Haptic Feedback Rules

Use haptics gently.

Allowed:

- Light tap confirmation.
- Gentle success feedback.
- Reward unlock feedback.

Avoid:

- Error haptics for child mistakes.
- Heavy feedback during learning prompts.
- Repeated haptics in animated loops.

## Audio Rules

Audio should support language, story, and confidence.

Rules:

- Every audio cue needs a visual cue.
- Voice should be clear and warm.
- Effects should be short and soft.
- M1 remains local-only.
- Avoid startling sounds.
- Keep audio optimized for older phones.

## Review Checklist

Before creating or changing a component, ask:

- Does it use theme tokens?
- Does it match `docs/DESIGN_SYSTEM.md`?
- Is it readable for a young child?
- Is motion purposeful?
- Are haptics gentle?
- Is audio local, short, and paired with visuals?
