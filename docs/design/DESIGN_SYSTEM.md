# Wach? Azul! Design System

## Purpose

The design system is the visual and interaction constitution for Wach? Azul!. Every UI decision should reference this file before becoming part of the app.

Wach? Azul! should feel warm, magical, culturally respectful, premium, calm, and playful. It is a child-facing adventure game, not a generic learning app.

## Product Feeling

The interface should make a child feel:

- Proud of their family language.
- Safe making mistakes.
- Curious about the next world.
- Rewarded without being overstimulated.
- Guided by characters, story, and place rather than menus.

The interface should make a parent feel:

- Trust in the product.
- Cultural care.
- Clarity about progress.
- Confidence that the child can play independently.

## Design Principles

- Story before instruction.
- Wonder before explanation.
- Calm beats clutter.
- Reusable components beat one-off screens.
- Child readability beats visual density.
- Motion should guide attention, not decorate everything.
- Rewards should feel earned and meaningful.
- Cultural elements should be specific, respectful, and researched.

## Colors

Use a warm, bright palette inspired by sky, village sunlight, woven textiles, desert warmth, and family interiors.

### Core Palette

- Sky Blue: `#4F9BD8`
- Deep Blue: `#326BA8`
- Story Blue: `#1D4B73`
- Sun Cream: `#FFFBF5`
- Warm Sand: `#FFF3D8`
- Courtyard Gold: `#FFE3B8`
- Soft Sky: `#C8ECFF`
- Celebration Orange: `#FFB45F`
- Earth Brown: `#5A2B12`
- Text Soft Black: `#202124`
- Supporting Text: `Colors.black54`

### Usage

- Backgrounds: Sun Cream.
- Primary actions: Deep Blue.
- Progress and XP: Deep Blue on Soft Sky.
- Rewards and speech: Warm Sand.
- Adventure/world surfaces: Soft Sky and Courtyard Gold.
- Character accents: Celebration Orange and Earth Brown.

Avoid single-hue screens. Each major view should balance warmth, sky, and grounded text.

## Typography

Primary typeface: Nunito via Google Fonts.

### Rules

- Use heavy weights for child-facing labels and success moments.
- Use short lines and generous spacing.
- Avoid tiny instructional text.
- Keep button labels action-oriented.
- Preserve readability over decorative type.

### Scale

- Display: celebration, word reveals, major emotional beats.
- Headline: screen titles and lesson prompts.
- Title: component titles, card labels, character names.
- Body: supporting copy.
- Label: status chips, compact XP, metadata.

## Buttons

Buttons are game actions, not generic controls.

### Primary Button

Use for the next meaningful action:

- Start lesson
- Listen and match
- Unlock reward
- Return to village

Style:

- Deep Blue background.
- White text.
- Minimum height: 52.
- Border radius: 8.
- Strong font weight.
- Optional icon when it clarifies the action.

### Icon Buttons

Use familiar icons for compact repeated actions. Always include tooltips.

### Animated Buttons

Use the shared animated button for child-facing action moments. Motion should be quick, gentle, and responsive.

## Cards

Cards represent game objects:

- Character Card
- Adventure Card
- World Tile
- Reward Popup

### Rules

- Border radius: 8.
- No card inside another card.
- Cards should have one clear purpose.
- Cards should be tappable only when the whole object is an action.
- Status belongs on adventure cards, not floating elsewhere.

## Icons

Icons must clarify, not decorate.

Use icons for:

- Audio
- Start/continue
- Locked state
- Progress/rewards
- Companion affordances

Avoid abstract icons for child-critical actions. Pair unfamiliar icons with text.

## Animations

Motion is part of the game language.

### Motion Purposes

- Reveal new learning.
- Confirm success.
- Guide attention to the next action.
- Make rewards feel earned.
- Give the companion life.

### Timing

- Fast: 180ms.
- Normal: 250ms.
- Celebration: 500ms.

### Curves

- Playful: easeOutBack.
- Gentle: easeOutCubic.

Avoid constant idle motion on learning screens. The child should be able to focus.

## Spacing

Spacing should feel breathable and predictable.

- XS: 4
- SM: 8
- MD: 12
- LG: 18
- XL: 24
- XXL: 28

Use XL page padding by default. Use constrained widths on large screens so child-facing content does not stretch too wide.

## Elevation

Prefer color, spacing, and borders over heavy shadows.

Use elevation sparingly:

- Dialogs
- Popups
- Temporary overlays

Avoid shadow-heavy dashboards.

## Illustration Style

Illustration should feel handcrafted, warm, and culturally grounded.

### Direction

- Rounded shapes.
- Soft color fills.
- Clear silhouettes.
- Village, family, food, music, textile, and story motifs.
- Premium children's book feel.

### Avoid

- Generic stock mascots.
- Overly busy backgrounds.
- Stereotypes.
- Dark fantasy tones.
- UI that feels like a school worksheet.

## Accessibility

Wach? Azul! is child-facing, so accessibility is a core product requirement.

### Requirements

- Large tap targets.
- High text contrast.
- Readable type sizes.
- No required precision gestures.
- Audio should have visual reinforcement.
- Mistakes should be gentle and recoverable.
- Motion should never block comprehension.
- Screens should work on small phones and tablets.

## Responsive Behavior

Use responsive constraints rather than assuming a single phone size.

### Rules

- Center narrow lesson content with a max width.
- Use vertical stacking on phones.
- Allow larger layouts to breathe on tablets.
- Avoid text overflow in buttons and cards.
- Keep game boards and fixed-format components dimensionally stable.

## Component Rule

Every screen must be composed from `app/lib/shared/ui/` wherever possible.

If a new screen needs a reusable object, add it to the design system first:

- `buttons/`
- `cards/`
- `dialogs/`
- `typography/`
- `spacing/`
- `icons/`
- `progress/`
- `animations/`
- `rewards/`
- `speech/`

Screens should orchestrate components. They should not invent a new visual language.
