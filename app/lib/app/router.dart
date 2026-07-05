import 'package:go_router/go_router.dart';

import '../core/constants/app_routes.dart';
import '../features/child_profile/child_profile_screen.dart';
import '../features/lesson/yemma_lesson_screen.dart';
import '../features/onboarding/onboarding_screen.dart';
import '../features/splash/splash_screen.dart';
import '../features/world_map/world_map_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.onboarding,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: AppRoutes.childProfile,
      builder: (context, state) => const ChildProfileScreen(),
    ),
    GoRoute(
      path: AppRoutes.worldMap,
      builder: (context, state) => const WorldMapScreen(),
    ),
    GoRoute(
      path: AppRoutes.yemmaLesson,
      builder: (context, state) => const YemmaLessonScreen(),
    ),
  ],
);
