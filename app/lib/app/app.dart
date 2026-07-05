import 'package:flutter/material.dart';

import 'router.dart';
import 'theme/app_theme.dart';

class WachAzulApp extends StatelessWidget {
  const WachAzulApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wach? Azul!',
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
