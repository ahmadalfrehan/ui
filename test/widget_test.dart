// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:io';

import 'package:designtra/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding
      .ensureInitialized(); // Ensure Flutter bindings are initialized
  setUp(() {
    // Mock network images to prevent actual network requests
    TestWidgetsFlutterBinding.ensureInitialized();
    HttpOverrides.global = null;
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    expect(find.text("Hi Lay!"), findsOneWidget);
    expect(find.byIcon(Icons.info), findsOneWidget);

    expect(find.text("20% of tasks completed"), findsOneWidget);
    // await tester.tap(find.byIcon(Icons.add));
    final grayContainer = find.byWidgetPredicate((widget) =>
        widget is Container &&
        widget.decoration is BoxDecoration &&
        (widget.decoration as BoxDecoration).borderRadius ==
            BorderRadius.circular(20) &&
        (widget.decoration as BoxDecoration).color == Colors.grey[300]);
    final greenContainer = find.byWidgetPredicate((widget) =>
        widget is Container &&
        widget.decoration is BoxDecoration &&
        (widget.decoration as BoxDecoration).borderRadius ==
            BorderRadius.circular(20) &&
        (widget.decoration as BoxDecoration).color == Colors.greenAccent);
    expect(greenContainer, findsOneWidget);
    expect(grayContainer, findsOneWidget);

    await tester.pumpWidget(const MyApp());

    await tester.pumpAndSettle();
  });
}
