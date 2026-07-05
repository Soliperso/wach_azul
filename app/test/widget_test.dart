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

  testWidgets('plays the local Yemma loop and saves progress', (tester) async {
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
    expect(find.text('Welcome, Yuba'), findsOneWidget);
    expect(find.text('+0 XP'), findsOneWidget);
    expect(find.text('Tap Yemma'), findsOneWidget);

    await tester.tap(find.text('Tap Yemma'));
    await tester.pumpAndSettle();

    expect(find.text('Yemma'), findsWidgets);
    expect(find.text('Mother'), findsWidgets);

    await tester.tap(find.text('Listen & Match'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Yemma'));
    await tester.pumpAndSettle();

    expect(find.text('+15 XP'), findsOneWidget);
    expect(find.text('Woven Heart'), findsOneWidget);

    await tester.tap(find.text('Unlock Woven Heart'));
    await tester.pumpAndSettle();

    expect(find.text('Azul!'), findsOneWidget);
    expect(
      find.text(
        'Come back tomorrow. Family Village will remember what you learned.',
      ),
      findsOneWidget,
    );
    expect(find.text('Back to Family Village'), findsOneWidget);

    await tester.tap(find.text('Back to Family Village'));
    await tester.pumpAndSettle();

    expect(find.text('+15 XP'), findsOneWidget);
    expect(find.text('Woven Heart'), findsOneWidget);

    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump(const Duration(milliseconds: 1));
  });
}
