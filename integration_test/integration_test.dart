import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:uuid/uuid.dart';
import 'package:yandex_to_do_app/domain/domain.dart';

import 'package:yandex_to_do_app/main_dev.dart' as app;

Future<void> tryExpect(Finder finder, Matcher matcher,
    {int retries = 10}) async {
  try {
    expect(finder, matcher);
  } catch (_) {
    if (retries == 0) {
      rethrow;
    }
    await Future.delayed(const Duration(seconds: 1), () {});
    await tryExpect(finder, matcher, retries: retries - 1);
  }
}

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  group('end-to-end test', () {
    testWidgets('tap on the floating action button, add task', (tester) async {
      await runZonedGuarded<Future<void>>(() async {
        app.main();
        await tester.pumpAndSettle();

        final Finder floatingActionButton =
            find.widgetWithIcon(FloatingActionButton, Icons.add);

        await tryExpect(floatingActionButton, findsOneWidget);

        await tester.tap(floatingActionButton);
        await tester.pumpAndSettle();

        final Finder textField = find.byType(TextField);
        var testString = const Uuid().v4();
        await tester.enterText(textField, testString);
        await tester.pumpAndSettle();

        final Finder dropdownButton = find.byKey(const Key('dropdown'));
        await tester.tap(dropdownButton);
        await tester.pumpAndSettle();

        final Finder dropdownItem =
            find.byKey(Key('dropdown_${Importance.important.toString()}')).last;
        await tester.tap(dropdownItem);
        await tester.pumpAndSettle();

        final Finder saveButton = find.byKey(const Key('save_button'));
        await tester.tap(saveButton);
        await tester.pumpAndSettle();

        final Finder textToFind =
            find.textContaining(testString, findRichText: true);
        await tester.dragUntilVisible(
          textToFind,
          find.byKey(const Key('custom_scroll_view')),
          const Offset(-100, 0),
        );
        expect(textToFind, findsOneWidget);
      }, (error, stack) => debugPrint(error.toString()));
    });
  });
}
