# State Management

Wach? Azul! uses Riverpod for app state.

## Rules

- Use providers for dependency construction.
- Use notifiers for state transitions and business rules.
- Keep persistence behind repositories or services.
- Keep widgets focused on rendering, form input, and navigation.
- Prefer small immutable state objects for lesson progress and rewards.
