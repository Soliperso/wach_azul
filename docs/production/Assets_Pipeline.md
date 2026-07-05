# Assets Pipeline

## Purpose

The assets pipeline defines how Wach? Azul! creates, names, exports, stores, reviews, and ships production assets.

Every asset should support the North Star: helping a child feel proud of their language, family, culture, and identity.

## Pipeline Order

1. Define the asset need from PRD, GDD, sprint, or design system.
2. Confirm the asset is inside current scope.
3. Create source asset.
4. Export optimized app asset.
5. Place it in the correct folder.
6. Name it with the project naming convention.
7. Register it in Flutter only when used.
8. Test it on small and large screens.
9. Review against the design system.

## App Asset Folder Structure

```text
app/assets/
  fonts/
  icons/
  illustrations/
  audio/
  animations/
```

Do not place production assets directly inside feature folders. Feature code may reference assets, but assets live in the shared asset library.

## Fonts

Recommended families:

- Nunito
- Baloo 2
- Fredoka

Rules:

- Use rounded, friendly, readable typography.
- Prefer Google Fonts during early development.
- Bundle font files only when there is a clear production reason.
- Keep font weights minimal to reduce app size.

Folder:

```text
app/assets/fonts/
```

Naming:

```text
font_<family>_<weight>.<ext>
```

Example:

```text
font_nunito_700.ttf
```

## Icons

Icons clarify actions. They are not decoration.

Use icons for:

- Audio
- Continue
- Locked state
- XP
- Rewards
- Companion affordances

Rules:

- Prefer Flutter Material or Lucide-style icons before custom icons.
- Use custom icons only for game-specific symbols.
- Keep silhouettes readable for young children.
- Pair unfamiliar icons with text.

Folder:

```text
app/assets/icons/
```

Naming:

```text
icon_<domain>_<name>_<state>.<ext>
```

Examples:

```text
icon_audio_play_default.svg
icon_reward_woven_heart_unlocked.svg
```

Export settings:

- Prefer SVG for flat vector icons.
- Export PNG only when texture or raster detail is required.
- Minimum touch target remains a UI responsibility, not an icon size requirement.

## Illustrations

Illustrations carry the storybook feeling of Wach? Azul!.

Use illustrations for:

- Worlds
- Characters
- Rewards
- Story moments
- Cultural objects

Rules:

- Warm, handcrafted, child-safe, culturally respectful.
- Clear silhouettes.
- No generic stock mascots.
- Avoid busy backgrounds behind text.
- Avoid stereotypes or unsourced cultural details.

Folder:

```text
app/assets/illustrations/
```

Recommended subfolders when needed:

```text
characters/
worlds/
rewards/
objects/
backgrounds/
```

Naming:

```text
illustration_<category>_<subject>_<variant>.<ext>
```

Examples:

```text
illustration_character_azul_idle.png
illustration_world_family_village_day.png
illustration_reward_woven_heart_default.png
```

Export settings:

- PNG for raster illustrations.
- Use transparent background when the asset is composited in UI.
- Use WebP later if app size becomes a concern.
- Export at 1x, 2x, and 3x only when Flutter resolution variants are needed.

## Audio

Audio is central to language learning and family warmth.

Use audio for:

- Word pronunciation.
- Companion lines.
- Reward moments.
- Gentle feedback.
- World ambience.

Rules:

- Keep M1 local-only.
- Keep clips short.
- Normalize volume across clips.
- Avoid startling sounds.
- Every audio cue should have a visual cue.

Folder:

```text
app/assets/audio/
```

Recommended subfolders:

```text
voice/
effects/
ambience/
music/
```

Naming:

```text
audio_<type>_<language>_<subject>_<variant>.<ext>
```

Examples:

```text
audio_voice_kabyle_yemma_default.m4a
audio_effect_reward_soft_chime.m4a
audio_ambience_family_village_day.m4a
```

Export settings:

- M4A/AAC for production mobile audio.
- WAV only for source or editing handoff.
- Short sound effects should stay lightweight.
- Looping ambience must be seamless.

## Animations

Animation should guide attention, not distract.

Use animation for:

- Azul greeting.
- Tap targets.
- Reward moments.
- Progress feedback.
- World ambience.

Avoid:

- Excessive bouncing.
- Fast flashing.
- Constant motion during learning prompts.
- Animation that blocks comprehension.

Folder:

```text
app/assets/animations/
```

Naming:

```text
animation_<domain>_<subject>_<action>.<ext>
```

Examples:

```text
animation_companion_azul_greeting.riv
animation_reward_woven_heart_reveal.json
```

Export settings:

- Prefer code-driven Flutter animation for simple UI motion.
- Use Rive for character/state-machine animation.
- Use Lottie only when the exported JSON is small and performant.
- Keep animation files optimized for older phones.

## Naming Conventions

Use lowercase snake_case.

Pattern:

```text
<asset_type>_<domain>_<subject>_<variant>.<ext>
```

Rules:

- No spaces.
- No uppercase letters.
- No vague names like `final`, `new`, `asset1`, or `updated`.
- Include language for voice assets.
- Include state for UI assets when relevant.

## Flutter Registration

Only register asset folders in `pubspec.yaml` when assets exist and are used.

Preferred registration pattern:

```yaml
flutter:
  assets:
    - assets/icons/
    - assets/illustrations/
    - assets/audio/
    - assets/animations/
```

Do not register source files, design files, or unused asset folders.

## Source Files

Editable source files should not be mixed with exported app assets.

Recommended future source folder:

```text
docs/production/source_assets/
```

Source files may include:

- Figma exports.
- Procreate files.
- Illustrator files.
- Raw audio.
- Animation project files.

## Review Checklist

Before an asset ships, ask:

- Does it support the North Star?
- Is it inside current scope?
- Does it create wonder?
- Can a 4-year-old understand the cue?
- Is it culturally respectful?
- Is it local-only for now?
- Is it optimized for older phones?
- Does it follow naming conventions?
- Is it in the correct folder?
- Is it registered only if used?
