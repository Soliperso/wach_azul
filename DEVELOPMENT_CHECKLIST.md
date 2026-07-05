# Development Checklist

Every Wach? Azul! feature must pass this quality gate before it is considered ready for commit.

## Step Review Loop

1. Pick one small step.
2. Define the expected result.
3. Implement.
4. Compare against references.
5. Fix gaps.
6. Run checks.
7. Commit.
8. Move to the next step.

## Required Reviews

### Product Review

- Does it match the PRD?
- Is it inside the current sprint?
- Does it avoid future features too early?

### Design Review

- Does it follow `docs/DESIGN_SYSTEM.md`?
- Does it use the theme system?
- Does it use the component library before inventing UI?

### Constitution Review

- Does it support the North Star?
- Does it follow the project articles?
- Does it help a child feel proud of language, family, culture, and identity?

### Architecture Review

- Is it clean Flutter architecture?
- Is business logic outside widgets?
- Are models, providers, repositories, and UI separated correctly?

### Gameplay Review

- Does it create wonder?
- Is it fun?
- Does the interaction feel like a game, not a worksheet?

### Child Review

- Would a six-year-old understand what to do?
- Are tap targets large?
- Are instructions visual, simple, and forgiving?

### Performance Review

- Would it run on an older Android phone?
- Are animations lightweight?
- Are assets optimized?
- Is unnecessary rebuild work avoided?

## Commit Gate

Before every commit, confirm:

- [ ] Matches Constitution
- [ ] Matches PRD
- [ ] Matches GDD
- [ ] Matches Current Sprint
- [ ] Uses Design System
- [ ] Uses Component Library
- [ ] Uses Flutter Standards
- [ ] Uses Riverpod correctly
- [ ] Responsive
- [ ] Accessible
- [ ] Animated when animation adds clarity or wonder
- [ ] Tested
- [ ] Performance checked
- [ ] Ready for Git commit

## Required Local Checks

Run from `app/` when code changes:

```sh
dart format lib test
flutter analyze
flutter test
```

For documentation-only changes, review the changed docs against the required references and commit once the quality gate is satisfied.
