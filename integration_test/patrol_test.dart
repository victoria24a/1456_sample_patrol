import 'package:flutter/material.dart';
import 'package:patrol/patrol.dart';
import 'package:patrol_test/main.dart' as app;

void main() {
  patrolTest(
    'Buy Subscription',
    nativeAutomation: true,
    (PatrolTester tester) async {
      app.main();
      await tester.pumpAndSettle();
      await tester(ElevatedButton).tap();
      await tester.native.tap(
        Selector(
          pkg: 'com.android.vending',
          className: 'android.widget.Button',
        ),
      );
    },
  );
}
