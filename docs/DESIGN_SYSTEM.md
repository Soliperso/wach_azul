# Wach? Azul! Design System v1.1

## Purpose

The Design System is the DNA of Wach? Azul!. It defines how every screen, component, animation, sound, and interaction should feel.

Wach? Azul! should feel like a magical, warm, safe, premium, storybook adventure rooted in family, language, culture, and identity. It should never feel like a generic education app, worksheet, dashboard, or flashcard product.

## Emotional Spine

The first five seconds should create this emotional sequence:

1. Wonder: "Wow. I want to explore this world."
2. Comfort: "This place feels safe and kind."
3. Excitement: "I can touch things and discover."
4. Pride: "This world belongs to me and my family."

Wonder is the doorway. Comfort keeps the child safe. Excitement creates interaction. Pride is the lasting feeling.

## North Star

We are not teaching words. We are helping a child feel proud of their language, family, culture, and identity.

Every visual choice should help the child understand, feel safe, feel wonder, or feel proud.

## Design Keywords

- Magical
- Warm
- Calm
- Playful
- Premium
- Child-safe
- Cultural
- Storybook-like
- Family-centered
- Local-first

## Visual Direction

Wach? Azul! should feel like an animated storybook adventure.

The visual language should suggest:

- A warm village.
- Family voices.
- Sunlight and sky.
- Woven textiles and handmade objects.
- Gentle discovery.
- A companion who makes the child feel safe.

Avoid:

- Generic school-app visuals.
- Overly loud game UI.
- Dark fantasy mood.
- Stock mascot energy.
- Cultural stereotypes.
- Busy screens that compete with learning.

## Product Feeling

### The child should feel

- Curious enough to explore.
- Safe enough to try.
- Proud enough to remember.
- Guided, not tested.
- Rewarded, not pressured.

### The parent should feel

- Trust.
- Cultural care.
- Clarity.
- Warmth.
- Confidence that the child can play independently.

## Design Principles

- Story before instruction.
- Wonder before explanation.
- Exploration before memorization.
- Family before mechanics.
- Calm beats clutter.
- Reusable components beat one-off screens.
- Child readability beats visual density.
- Motion guides attention; it does not decorate everything.
- Mistakes are soft and recoverable.
- Rewards are meaningful, not noisy.
- Cultural elements must be specific, respectful, and researched.

## Colors

The palette is inspired by open sky, village sunlight, warm clay, nature, woven textiles, and quiet family spaces.

### Core Palette

| Token | Value | Role |
| --- | --- | --- |
| Sky Blue | `#4F9BD8` | Calm backgrounds, openness, discovery |
| Deep Blue | `#326BA8` | Primary UI actions, progress |
| Story Blue | `#1D4B73` | Major titles, story emphasis |
| Sun Cream | `#FFFBF5` | App background |
| Warm Sand | `#FFF3D8` | Speech, soft panels, comfort |
| Sun Gold | `#FFE3B8` | Rewards, warmth, celebration |
| Soft Sky | `#C8ECFF` | XP, calm card surfaces |
| Clay Orange | `#FFB45F` | Cultural warmth, primary accents, companion warmth |
| Leaf Green | `#72B77A` | Success, nature, gentle positive feedback |
| Night Brown | `#5A2B12` | Grounding, readable warm contrast |
| Text Primary | `#202124` | Main text |

### Color Rules

- Use Sun Cream as the default page background.
- Use Deep Blue for primary actions.
- Use Warm Sand for speech and comfort.
- Use Sun Gold and Clay Orange for reward and celebration moments.
- Use Leaf Green for gentle success only.
- Use Night Brown for grounding and character warmth.
- Avoid single-hue screens.
- Avoid harsh red for child mistakes. Use warm guidance instead.

## Typography

Typography should be rounded, friendly, readable, and child-safe.

Recommended families:

- Nunito
- Baloo 2
- Fredoka

Current implementation uses Nunito.

### Type Roles

- Display: word reveals, celebrations, emotional moments.
- Headline: screen titles and major prompts.
- Title: cards, character names, lesson names.
- Body: short supporting copy.
- Label: statuses, chips, metadata.

### Typography Rules

- Use heavy weights for child-facing labels and celebration.
- Use short lines.
- Avoid tiny instructional text.
- Avoid dense paragraphs in child-facing screens.
- Do not rely on reading alone. Pair text with icon, illustration, audio, or motion when needed.
- Preserve clarity over decorative type.

## Spacing

Spacing should feel breathable and predictable.

| Token | Value |
| --- | --- |
| XS | 4 |
| SM | 8 |
| MD | 12 |
| LG | 18 |
| XL | 24 |
| XXL | 28 |

### Spacing Rules

- Use XL page padding by default.
- Keep lesson content centered with a readable max width.
- Leave breathing room around touch targets.
- Use consistent spacing before inventing one-off values.
- Avoid cramped card layouts.

## Border Radius

Default radius: 8.

Use:

- 8 for cards, buttons, tiles, and panels.
- 12 to 18 for more characterful reward or celebration surfaces.
- Full circles only for avatars, badges, and symbolic objects.

## Elevation

Prefer color, spacing, borders, and shape over heavy shadows.

Use elevation for:

- Dialogs.
- Reward popups.
- Important temporary overlays.

Avoid:

- Shadow-heavy dashboard layouts.
- Cards nested inside cards.
- Floating sections that make screens feel busy.

## Buttons

Buttons are game actions, not generic controls.

### Primary Button

Use for the main next action:

- Start Adventure
- Enter Family Village
- Listen & Match
- Unlock Reward
- Back to Family Village

Rules:

- Large.
- High contrast.
- Minimum height: 52.
- Clear text label.
- Optional icon only when it clarifies the action.
- Gentle animation on press or reveal.

### Secondary Button

Use for lower-priority choices.

Rules:

- Clear border or softer fill.
- Same readable typography.
- Never compete with the primary action.

### Icon Button

Use only when the icon is familiar or paired with a label.

Rules:

- Always include tooltip text.
- Do not use abstract icons for child-critical actions.

## Cards

Cards should feel like soft storybook panels and game objects.

Core cards:

- AdventureCard
- CharacterCard
- CollectibleCard
- WorldTile
- RewardPopup

Rules:

- One card, one purpose.
- Clear title.
- Clear visual or symbolic area.
- Spacious layout.
- Tappable only when the entire card is an action.
- No card inside another card.
- Status should live inside the card, not float nearby.

## Dialogs

Dialogs are for meaningful moments, not routine layout.

Use dialogs for:

- Celebrations.
- Rewards.
- Parent confirmation in future.
- Important gentle guidance.

Rules:

- Keep copy short.
- Use one primary action.
- Make the emotional result clear.
- Avoid blocking the child for minor mistakes.

## Motion

Motion should guide attention and create wonder.

### Motion Purposes

- Welcome the child.
- Reveal a word.
- Point to a tap target.
- Confirm success.
- Make a reward feel earned.
- Give Azul life.
- Add gentle world ambience.

### Durations

- Fast: 180ms.
- Normal: 250ms.
- Celebration: 500ms.

### Curves

- Playful: easeOutBack.
- Gentle: easeOutCubic.

### Motion Rules

- Use motion when it clarifies or delights.
- Avoid constant motion during learning prompts.
- Avoid flashing.
- Avoid excessive bouncing.
- Keep animations lightweight for older Android phones.
- Every important animated cue should still make sense if motion is reduced.

## Icons

Icons clarify actions and states.

Use icons for:

- Audio.
- Continue.
- Locked state.
- XP.
- Rewards.
- Companion affordances.

Rules:

- Prefer familiar icons.
- Pair unfamiliar icons with text.
- Keep silhouettes simple.
- Do not use icons as decoration when they do not communicate.

## Illustrations

Illustration should carry the storybook feeling.

Style:

- Handcrafted.
- Warm.
- Rounded.
- Clear silhouettes.
- Soft color fills.
- Culturally grounded.
- Premium children's book feel.

Subjects:

- Family Village.
- Azul.
- Family words.
- Woven objects.
- Courtyards.
- Food, music, stories, and nature in future worlds.

Cultural rule:

If an illustration references Amazigh culture, it should be specific, respectful, and reviewed for care. Avoid stereotypes and vague "exotic" decoration.

## Audio Style

Audio should support language, story, and emotional safety.

Use audio for:

- Word pronunciation.
- Azul companion lines.
- Reward moments.
- Gentle feedback.
- World ambience.

Rules:

- Voice should be warm, clear, and calm.
- Effects should be soft and short.
- No startling sounds.
- Every audio cue should have a visual cue.
- M1 stays local-only.
- Avoid background audio that competes with pronunciation.

## Haptics

Haptics should be gentle and rare.

Use haptics for:

- Tap confirmation.
- Success.
- Reward unlock.

Avoid:

- Error haptics for child mistakes.
- Heavy haptics.
- Repeated haptics in loops.

## Accessibility

A child who cannot read yet should still know what to do.

Requirements:

- Large tap targets.
- High contrast text.
- Clear visual cues.
- Audio supported by visuals.
- No required precision gestures.
- Simple layouts.
- Forgiving mistakes.
- No time pressure in M1.
- Motion should never block comprehension.

## Responsive Behavior

The app should work on small phones, older Android phones, and tablets.

Rules:

- Use vertical stacking on phones.
- Use constrained content width on large screens.
- Avoid text overflow in buttons and cards.
- Keep fixed-format game elements dimensionally stable.
- Avoid unnecessary overdraw and heavy asset layers.

## Component Library Rule

Every screen should be assembled from shared components in:

```text
app/lib/shared/ui/
```

Core component categories:

- Buttons
- Cards
- Dialogs
- Typography
- Spacing
- Icons
- Progress
- Animations
- Rewards
- Speech
- Theme

If a screen needs a new reusable pattern, add or improve a shared component first.

## M1 Design Goal

For Sprint 1, one child should complete:

Splash -> Onboarding -> Create Child -> Family Village -> Tap Yemma -> Learn -> Adventure -> Reward -> Azul celebrates -> Come back tomorrow.

The child should feel:

- Wonder at the world.
- Comfort in the interaction.
- Excitement to tap and discover.
- Pride after learning Yemma.

## Design Review Checklist

At the end of each design or UI task, ask:

- Does it feel magical?
- Does it feel safe for a young child?
- Does it respect Amazigh culture?
- Is it easy to implement in Flutter?
- Does it encourage exploration instead of memorization?
- Does it support the Constitution?
- Does it use shared components?
- Would an AI assistant or developer know how to build from it?

If any answer is no, improve the design before moving on.
