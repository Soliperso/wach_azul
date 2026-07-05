# State Management

Wach? Azul! uses Riverpod for app state.

Step 8 rule: build providers, no widgets.

## Rules

- Use providers for dependency construction.
- Use notifiers for state transitions and business rules.
- Keep persistence behind repositories or services.
- Keep widgets focused on rendering, form input, and navigation.
- Prefer small immutable state objects for lesson progress and rewards.

## Provider Types

- `Provider`: static game data, repositories, services, and derived read-only data.
- `NotifierProvider`: state transitions such as child profile, lesson progress, and rewards.
- `FutureProvider`: async loading when a local repository or future remote service requires it.

## Foundation Providers

Source:

```text
app/lib/shared/state/foundation_providers.dart
```

Providers:

- `foxProvider`
- `wordsProvider`
- `collectiblesProvider`
- `rewardsProvider`
- `lessonsProvider`
- `worldsProvider`
- `adventuresProvider`

## Rules For Future Providers

- Provider names end with `Provider`.
- Notifier names describe the domain, not the screen.
- Screens watch providers; they do not own business rules.
- Repositories hide persistence details.
- Keep M1 local-only.
