# Technical Architecture

## App Structure

- `lib/app`: app entry, router, theme.
- `lib/core`: constants, shared widgets, services.
- `lib/features`: feature-first UI, state, and repositories.
- `lib/shared/models`: small data models shared across features.

## State

Use Riverpod providers and notifiers. Keep business logic outside widgets.

## Navigation

Use GoRouter and route constants from `AppRoutes`.
