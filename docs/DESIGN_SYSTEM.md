# Wach? Azul! Design System v1.0

## 1. Purpose

The Design System is the visual and interaction DNA of Wach? Azul!. It defines how every screen, button, card, animation, sound, illustration, and game moment should feel.

This is not a decoration guide. It is a production reference for building a consistent magical adventure game in Flutter.

Every future UI decision should be traceable back to this document.

## 2. North Star

We are not teaching words. We are helping a child feel proud of their language, family, culture, and identity.

Every design decision should help the child:

- Understand what to do.
- Feel safe trying.
- Feel wonder in the world.
- Feel pride in family language and identity.

## 3. Emotional Design Spine

The first five seconds of Wach? Azul! should create this emotional sequence:

1. Wonder: "Wow. I want to explore this world."
2. Comfort: "This place feels safe and kind."
3. Excitement: "I can touch things and discover."
4. Pride: "This world belongs to me and my family."

Wonder is the doorway. Comfort keeps the child safe. Excitement invites interaction. Pride is the lasting emotional reward.

## 4. Design Philosophy

Wach? Azul! should feel like an animated storybook adventure, not a generic education app.

### Design Keywords

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

### Child-First Principles

- A child who cannot read yet should still understand what to do.
- The next action should always be visually obvious.
- Mistakes should feel safe and recoverable.
- Rewards should feel meaningful, not noisy.
- Learning should feel like discovery, not testing.
- Visual density should stay low.
- Touch targets should be large and forgiving.
- Motion should guide attention, never overwhelm it.

### Cultural Principles

- Amazigh and North African inspiration must be handled with care.
- Cultural objects should feel specific, researched, and respectful.
- Avoid generic "exotic" decoration.
- Avoid stereotypes.
- Family warmth matters more than ornamental complexity.

### Correct Usage

- A family-word lesson uses a warm speech bubble, soft audio cue, clear tap target, and a gentle reward.
- A world tile uses storybook color, a readable title, a clear action, and a visual hint of place.
- A success moment gives feedback through color, motion, sound, and wording without shouting at the child.

### Incorrect Usage

- A screen that looks like a school quiz.
- A screen full of tiny text and many options.
- A loud arcade celebration after every tap.
- A decorative cultural pattern with no clear meaning or review.
- A button that only uses an abstract icon for a child-critical action.

## 5. Color System

Colors should balance sky, sun, clay, nature, storybook warmth, and readable contrast.

### Flutter Mapping

Color tokens should map to:

```dart
AppColors.primary
AppColors.secondary
AppColors.success
AppColors.warning
AppColors.background
AppColors.surface
AppColors.textPrimary
AppColors.reward
```

### Core Tokens

| Token | Hex | Purpose | Usage Examples |
| --- | --- | --- | --- |
| Primary / Sky Blue | `#4F9BD8` | Wonder, sky, openness, discovery | Splash accents, map atmosphere, calm visual anchors |
| Primary Dark / Deep Blue | `#326BA8` | Main action, trust, progress | Primary buttons, progress fill, selected states |
| Story Blue | `#1D4B73` | Story emphasis, major headings | Word reveals, screen titles, companion emphasis |
| Secondary / Clay Orange | `#FFB45F` | Warmth, cultural energy, companion warmth | Azul accents, primary illustrations, celebration details |
| Success / Leaf Green | `#72B77A` | Gentle positive feedback | Correct answer state, completed lesson state |
| Warning / Amber Sand | `#F2B84B` | Gentle attention without alarm | Soft reminders, locked-but-friendly hints |
| Background / Sun Cream | `#FFFBF5` | Warm page background | Scaffold background, calm blank space |
| Surface / Warm Sand | `#FFF3D8` | Comfort, speech, soft panels | Speech bubbles, soft cards, onboarding panels |
| Surface Alt / Soft Sky | `#C8ECFF` | XP, calm cards, sky surfaces | XP widgets, peaceful tiles, secondary panels |
| Reward / Sun Gold | `#FFE3B8` | Rewards, warmth, celebration | Reward cards, collectible panels, celebration glow |
| Reward Accent / Woven Gold | `#E7A83E` | Earned value and collectible emphasis | Badges, collectible frames, reward icons |
| Text / Night Brown | `#5A2B12` | Warm grounding and cultural warmth | Strong text on warm surfaces, illustration linework |
| Text Primary | `#202124` | Main readable text | Body text, titles on light backgrounds |
| Text Secondary | `#6B6258` | Supporting readable text | Captions, helper text, subtitles |
| Error Soft | `#B85C5C` | Rare serious issue | System errors only, not child mistakes |

### Color Rules

- Use `Sun Cream` as the default background.
- Use `Deep Blue` for the main action.
- Use `Warm Sand` for speech and comfort.
- Use `Sun Gold` for reward moments.
- Use `Leaf Green` for success, never harsh neon green.
- Avoid harsh red for normal child mistakes.
- Avoid single-hue screens.
- Use warm colors to comfort, blue to open the world, gold to reward.

### Correct Usage

- Primary button: Deep Blue background, white text.
- Reward popup: Warm Sand surface, Sun Gold accent, Night Brown text.
- Correct answer: Leaf Green highlight plus gentle wording.

### Incorrect Usage

- Bright red for "wrong answer."
- Purple-blue gradients as a default brand look.
- Beige-only screens with no sky or reward contrast.
- A primary action in a low-contrast pastel.

## 6. Typography

Typography should feel rounded, friendly, readable, and safe.

### Font Family

Primary: Nunito.

Approved future options:

- Baloo 2 for more expressive story titles.
- Fredoka for playful child-facing moments.

Do not mix multiple display fonts in the same screen.

### Flutter Mapping

Typography should map to:

```dart
AppTextStyles.headingXL
AppTextStyles.headingLG
AppTextStyles.headingMD
AppTextStyles.bodyLG
AppTextStyles.bodyMD
AppTextStyles.button
AppTextStyles.caption
```

### Type Hierarchy

| Role | Suggested Size | Weight | Purpose |
| --- | ---: | ---: | --- |
| Heading XL | 40-48 | 900 | Splash title, celebration, major word reveal |
| Heading LG | 30-36 | 900 | Screen title, world title |
| Heading MD | 24-28 | 800-900 | Lesson prompt, card title |
| Body LG | 18-20 | 700 | Child-facing instructions |
| Body MD | 16 | 600-700 | Supporting text |
| Button | 16-18 | 800 | Actions |
| Caption | 13-14 | 700 | Status, helper labels |

### Typography Rules

- Use short lines.
- Prefer one strong sentence over several explanatory paragraphs.
- Avoid tiny text.
- Avoid long all-caps text.
- Use heavy weights for child-facing labels.
- Pair text with icons, illustrations, motion, or audio when the child may not read yet.

### Correct Usage

- "Tap Yemma" as a large button label.
- "Family Village" as a warm, strong heading.
- "Try again. Listen for yem-ma." as gentle helper text.

### Incorrect Usage

- A paragraph explaining game rules to a four-year-old.
- A tiny caption as the only instruction.
- Decorative script fonts for essential labels.

## 7. Spacing System

Spacing should feel calm, breathable, and predictable.

### Flutter Mapping

```dart
AppSpacing.xs = 4
AppSpacing.sm = 8
AppSpacing.md = 12
AppSpacing.lg = 16
AppSpacing.xl = 24
AppSpacing.xxl = 32
AppSpacing.section = 48
AppSpacing.hero = 64
```

### Spacing Scale

| Value | Name | Use |
| ---: | --- | --- |
| 4 | XS | Tight icon/text spacing, tiny internal gaps |
| 8 | SM | Small component gaps, chip padding |
| 12 | MD | Label-to-body spacing, compact card spacing |
| 16 | LG | Standard component internal spacing |
| 24 | XL | Screen padding, major stack spacing |
| 32 | XXL | Large section separation |
| 48 | Section | Major screen blocks |
| 64 | Hero | Splash and celebration breathing room |

### Spacing Rules

- Use 24 as default page padding.
- Keep lesson content centered with a max width.
- Use 16-24 inside cards.
- Use 32-48 between major moments.
- Never cram multiple primary actions together.

## 8. Border Radius

Rounded corners should feel soft and storybook-like without becoming bubbly or childish.

### Flutter Mapping

```dart
AppRadius.small = 6
AppRadius.medium = 8
AppRadius.large = 12
AppRadius.extraLarge = 18
```

### Radius Tokens

| Token | Value | Use |
| --- | ---: | --- |
| Small | 6 | Small chips, compact indicators |
| Medium | 8 | Buttons, cards, tiles, panels |
| Large | 12 | Reward cards, dialogue surfaces |
| Extra Large | 18 | Celebration panels, special storybook surfaces |

### Radius Rules

- Default to Medium.
- Use Extra Large only for special warm moments.
- Use circles for avatars, badges, and symbolic tokens.

## 9. Elevation and Shadows

Wach? Azul! should prefer color, spacing, shape, and borders over heavy shadows.

### Flutter Mapping

```dart
AppElevation.none = 0
AppElevation.low = 1
AppElevation.medium = 3
AppElevation.high = 6
```

### Elevation Levels

| Level | Value | Use |
| --- | ---: | --- |
| None | 0 | Default cards and page sections |
| Low | 1 | Subtle tappable components |
| Medium | 3 | Dialogs, active reward cards |
| High | 6 | Rare overlays and important celebration moments |

### Shadow Rules

- Use shadows sparingly.
- Avoid stacked card shadows.
- Never make the app feel like a dashboard.
- Use warm surfaces and borders before reaching for elevation.

## 10. Buttons

Buttons are game actions. They should feel easy, warm, and decisive.

### Flutter Mapping

```dart
PrimaryButton
SecondaryButton
GhostButton
IconButton
AnimatedButton
```

### Primary Button

Purpose:

- The next meaningful action.
- Examples: Start Adventure, Enter Family Village, Listen & Match, Unlock Reward.

States:

- Default: Deep Blue fill, white text.
- Pressed: gentle scale down, slightly darker fill.
- Disabled: low-contrast neutral surface, no animation.

Animation:

- 180ms press feedback.
- Optional 250ms reveal animation.

Correct:

- One primary button per decision moment.

Incorrect:

- Multiple competing primary buttons on one child-facing screen.

### Secondary Button

Purpose:

- A safe alternative action.
- Examples: Back, Change Avatar, Try Another Option.

States:

- Default: warm surface or outline.
- Pressed: subtle fill shift.
- Disabled: faded outline and text.

Animation:

- 180ms press feedback only.

### Ghost Button

Purpose:

- Low-emphasis navigation or optional action.

States:

- Default: transparent background with readable text.
- Pressed: soft surface tint.
- Disabled: muted text.

Rule:

- Never use a ghost button for the main next step.

### Icon Button

Purpose:

- Compact repeated action using a familiar symbol.

States:

- Default: clear icon.
- Pressed: subtle scale or tint.
- Disabled: muted icon.

Rules:

- Always provide tooltip text.
- Pair with visible label when action is child-critical.
- Avoid abstract icons for learning actions.

## 11. Cards

Cards are storybook panels and game objects.

### Character Card

Purpose:

- Introduce a person, guide, or family figure.

Required content:

- Character symbol or illustration.
- Name.
- Short emotional description.

Correct:

- Yemma card with warm visual focus and short text.

Incorrect:

- Character card with dense biography text.

### Adventure Card

Purpose:

- Show an available adventure or lesson path.

Required content:

- Title.
- Short description.
- Status.
- Clear start affordance if unlocked.

### Reward Card

Purpose:

- Show earned or locked rewards.

Required content:

- Collectible visual.
- Reward name.
- Earned state.
- Short meaning.

### Story Card

Purpose:

- Present a small story beat or family prompt.

Required content:

- Short line.
- Optional speaker.
- Optional illustration.

### Card Rules

- One card, one purpose.
- Avoid nested cards.
- Keep action areas large.
- Do not overload cards with multiple unrelated statuses.

## 12. Dialogs

Dialogs should be reserved for meaningful moments.

Use dialogs for:

- Celebrations.
- Reward reveals.
- Important parent confirmations in future scope.

Rules:

- One primary action.
- Short copy.
- Warm tone.
- No routine interruptive dialogs.
- Never use a dialog to scold a child.

## 13. Motion Language

Motion should guide attention and create wonder.

### Flutter Mapping

```dart
AppAnimations.fast = 180ms
AppAnimations.normal = 250ms
AppAnimations.celebratory = 500ms
AppAnimations.playfulCurve = easeOutBack
AppAnimations.gentleCurve = easeOutCubic
```

### Default Durations

| Motion | Duration | Use |
| --- | ---: | --- |
| Tap feedback | 180ms | Button press, option press |
| UI transition | 250ms | Step changes, card reveals |
| Word reveal | 450-500ms | Learning moment |
| Reward reveal | 500ms | Celebration |
| Ambient motion | 1800-3000ms | Clouds, gentle background life |

### When To Animate

- A child needs to know where to tap.
- A word is revealed.
- A correct answer is confirmed.
- XP or collectible is earned.
- Azul enters or reacts.
- A world feels alive.

### When Not To Animate

- During focused listening.
- While the child is reading or choosing.
- When motion would repeat endlessly near text.
- For every small state change.
- When performance would suffer.

### Correct Usage

- A reward card gently scales in once.
- A cloud drifts slowly in the background.
- A selected answer gives a quick clear response.

### Incorrect Usage

- Constant bouncing buttons.
- Fast flashing success effects.
- Animated background behind every line of text.

## 14. Icons

Icons clarify actions and states.

Use icons for:

- Audio.
- Continue.
- Locked state.
- XP.
- Rewards.
- Companion affordances.

Rules:

- Prefer familiar symbols.
- Pair unfamiliar symbols with text.
- Keep silhouettes simple.
- Avoid icons as filler decoration.
- Use asset icons only when the game needs a custom symbol.

## 15. Illustration Principles

Illustration carries the storybook identity.

### Style

- Handcrafted.
- Warm.
- Rounded.
- Clear silhouettes.
- Soft fills.
- Gentle texture.
- Culturally grounded.
- Premium children's book feeling.

### Subject Matter

- Family Village.
- Azul.
- Family words.
- Woven objects.
- Courtyards.
- Warm homes.
- Food, music, stories, animals, and nature in future worlds.

### Environmental Storytelling

Each world should communicate its meaning before the child reads.

Family Village should suggest:

- Warm courtyard.
- Family presence.
- Safe gathering place.
- Handmade textures.
- Gentle sunlight.

Future worlds should have distinct identities but share the same emotional spine.

### Cultural Care

If an asset references Amazigh culture:

- Use specific references.
- Avoid vague "tribal" decoration.
- Avoid decorative misuse of symbols.
- Review with care before treating it as canonical.

## 16. Audio Guidelines

Audio should support language, story, and emotional safety.

### Button Click

Purpose:

- Confirm touch.

Style:

- Soft, short, wooden or warm tap.
- No sharp digital click.

### Success

Purpose:

- Confirm correct action.

Style:

- Gentle, warm, brief.
- Should feel encouraging, not loud.

### Celebration

Purpose:

- Mark reward and pride.

Style:

- Soft chime, warm melodic lift, short duration.
- No arcade fanfare.

### Nature Ambience

Purpose:

- Make worlds feel alive.

Style:

- Quiet and loopable.
- Must not compete with voice.

### Character Voices

Purpose:

- Carry warmth, pronunciation, and companion identity.

Style:

- Clear.
- Calm.
- Friendly.
- Slow enough for children.

### Audio Rules

- Every audio cue needs a visual cue.
- M1 remains local-only.
- Avoid startling sounds.
- Avoid background audio during pronunciation if it reduces clarity.
- Keep clips short and optimized.

## 17. Accessibility

Accessibility is part of the product, not a later pass.

### Minimum Touch Target

Minimum: 48 x 48.

Preferred for child-facing primary actions: 52+ height.

### Contrast Goals

- Main text should meet strong readability on light backgrounds.
- Buttons should have clear contrast.
- Do not place text over busy art.

### Readability

- Use large, rounded type.
- Keep text short.
- Avoid dense instructions.
- Use icons, images, and audio with text.

### Non-Reader Support

A child who cannot read should still understand:

- What is tappable.
- What happened.
- What to do next.
- When they succeeded.

Use:

- Motion cues.
- Companion guidance.
- Clear images.
- Audio.
- Large buttons.

### Motion Sensitivity

- Avoid flashing.
- Avoid rapid looping motion.
- Allow important information to remain understandable without animation.

## 18. Performance Standards

The app must feel smooth on older Android phones.

Rules:

- Prefer lightweight Flutter animations for simple UI.
- Avoid huge raster assets.
- Optimize illustrations.
- Keep ambient animation subtle.
- Avoid unnecessary overlapping transparent layers.
- Avoid rebuilding large trees for tiny state changes.
- Keep M1 local-first.

## 19. Flutter Token Mapping

Every design decision should map cleanly to Flutter.

### Color Tokens

```dart
AppColors.primary
AppColors.primaryDark
AppColors.secondary
AppColors.success
AppColors.warning
AppColors.background
AppColors.surface
AppColors.surfaceAlt
AppColors.textPrimary
AppColors.textSecondary
AppColors.reward
AppColors.rewardAccent
```

### Spacing Tokens

```dart
AppSpacing.xs
AppSpacing.sm
AppSpacing.md
AppSpacing.lg
AppSpacing.xl
AppSpacing.xxl
AppSpacing.section
AppSpacing.hero
```

### Radius Tokens

```dart
AppRadius.small
AppRadius.medium
AppRadius.large
AppRadius.extraLarge
```

### Elevation Tokens

```dart
AppElevation.none
AppElevation.low
AppElevation.medium
AppElevation.high
```

### Text Style Tokens

```dart
AppTextStyles.headingXL
AppTextStyles.headingLG
AppTextStyles.headingMD
AppTextStyles.bodyLG
AppTextStyles.bodyMD
AppTextStyles.button
AppTextStyles.caption
```

### Motion Tokens

```dart
AppAnimations.fast
AppAnimations.normal
AppAnimations.celebratory
AppAnimations.playfulCurve
AppAnimations.gentleCurve
```

### Component Mapping

| Design Concept | Flutter Component |
| --- | --- |
| Primary action | `PrimaryButton` |
| Animated action | `AnimatedButton` |
| Character surface | `CharacterCard` |
| Adventure surface | `AdventureCard` |
| World entry | `WorldTile` |
| Reward reveal | `RewardPopup` |
| Collectible state | `CollectibleCard` |
| Companion | `FoxWidget` |
| Dialogue | `DialogueBox` or `SpeechBubble` |
| XP display | `XpWidget` or `XpBar` |
| Celebration | `CelebrationDialog` |
| Ambient storybook background | `AnimatedBackground` |

## 20. Component Specification Rules

Before creating a new screen-specific widget, ask:

- Can this be a shared component?
- Does it belong in `app/lib/shared/ui/`?
- Does it use design tokens?
- Can future worlds reuse it?
- Does it help the child understand, feel safe, or feel wonder?

Screens should compose components. Screens should not invent visual language.

## 21. M1 Vertical Slice Design Intent

Sprint 1 flow:

Splash -> Onboarding -> Create Child -> Family Village -> Tap Yemma -> Learn -> Adventure -> Reward -> Azul celebrates -> Come back tomorrow.

### Splash

Feeling:

- Wonder first.
- Soft invitation.
- Premium storybook mood.

### Onboarding

Feeling:

- Comfort.
- Parent trust.
- Child-safe simplicity.

### Create Child

Feeling:

- Personal.
- Safe.
- Playful.

### Family Village

Feeling:

- Warm.
- Familiar.
- Magical.
- Explorable.

### Yemma Learning

Feeling:

- Gentle.
- Family-centered.
- Not a quiz.

### Listen and Match

Feeling:

- Clear.
- Forgiving.
- Audio-led.

### Reward and Celebration

Feeling:

- Earned.
- Proud.
- Warm.
- Inviting return.

## 22. Design Review Checklist

Before marking a UI or design ticket complete, ask:

- Does it feel magical?
- Does it feel safe for a young child?
- Does it respect Amazigh culture?
- Is it easy to implement in Flutter?
- Does it encourage exploration instead of memorization?
- Does it support Wonder before instruction?
- Does it align with the Constitution?
- Does it match the PRD?
- Does it support the GDD loop?
- Does it avoid future scope?
- Does it use shared components?
- Would another developer build the same UI from this guidance?

If any answer is no, improve the design before moving on.

## 23. Definition of Done

Ticket #001 is complete when:

- The Design System can guide every future UI decision.
- Another developer can build screens without guessing.
- The visual language feels magical, warm, calm, playful, premium, child-safe, cultural, and storybook-like.
- The document maps design decisions to Flutter implementation tokens.
- It supports the Constitution, PRD, Roadmap, and GDD.
- It encourages exploration instead of memorization.
- It is committed to Git.
