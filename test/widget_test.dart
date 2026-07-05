import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:wach_azul/app/app.dart';

void main() {
  testWidgets('shows the splash screen on launch', (tester) async {
    SharedPreferences.setMockInitialValues({});

    await tester.pumpWidget(const ProviderScope(child: WachAzulApp()));
    await tester.pump(const Duration(milliseconds: 1));

    expect(find.text('Wach? Azul!'), findsOneWidget);
    expect(
      find.text('Learn your language through magical adventures'),
      findsOneWidget,
    );

    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump(const Duration(milliseconds: 1));
  });

  testWidgets('creates a child profile and enters Family Village', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});

    await tester.pumpWidget(const ProviderScope(child: WachAzulApp()));
    await tester.pump(const Duration(seconds: 3));
    await tester.pump(const Duration(milliseconds: 1));

    await tester.tap(find.text('Start Adventure'));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(EditableText), 'Yuba');
    await tester.tap(find.text('Enter Family Village'));
    await tester.pumpAndSettle();

    expect(find.text('Family Village'), findsOneWidget);
    expect(find.text('🦊 Welcome, Yuba'), findsOneWidget);
    expect(find.text('First Words'), findsOneWidget);

    await tester.tap(find.byTooltip('Start lesson'));
    await tester.pumpAndSettle();

    expect(find.text('Azul'), findsWidgets);
    expect(find.text('Hello'), findsOneWidget);

    await tester.tap(find.text('Practice Azul'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Azul'));
    await tester.pumpAndSettle();

    expect(find.text('+10 XP'), findsOneWidget);
    expect(find.text('Village Star'), findsOneWidget);

    await tester.tap(find.text('Collect Village Star'));
    await tester.pumpAndSettle();

    expect(find.text('Azul!'), findsOneWidget);
    expect(find.text('Back to Family Village'), findsOneWidget);

    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump(const Duration(milliseconds: 1));
  });
}
