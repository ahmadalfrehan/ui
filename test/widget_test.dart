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
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    HttpOverrides.global = null;
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text("Hi Lay!"), findsOneWidget);
    expect(find.byIcon(Icons.info), findsOneWidget);
    expect(find.text("20% of tasks completed"), findsOneWidget);

    expect(find.text("App design for uper"), findsOneWidget);
    final textWidget = find.text("App design for uper");
    final positionedWidget = find.byType(Positioned);
    final containerWithImage = find.byWidgetPredicate((widget) =>
        widget is Container &&
        widget.decoration is BoxDecoration &&
        (widget.decoration as BoxDecoration).border ==
            Border.all(color: Colors.white) &&
        (widget.decoration as BoxDecoration).shape == BoxShape.circle &&
        (widget.decoration as BoxDecoration).image ==
            const DecorationImage(
                image: NetworkImage(
                    "https://ahmadalfrehan.com/assets/assets/images/logo.jpg")));
    final grayContainer = find.byWidgetPredicate((widget) =>
        widget is Container &&
        widget.decoration is BoxDecoration &&
        (widget.decoration as BoxDecoration).borderRadius ==
            BorderRadius.circular(20) &&
        (widget.decoration as BoxDecoration).color == Colors.grey[300]);
    final hexContainer = find.byWidgetPredicate((widget) =>
        widget is Container &&
        widget.decoration is BoxDecoration &&
        (widget.decoration as BoxDecoration).borderRadius ==
            BorderRadius.circular(50) &&
        (widget.decoration as BoxDecoration).color == const Color(0xFF6143e1));
    final greenContainer = find.byWidgetPredicate((widget) =>
        widget is Container &&
        widget.decoration is BoxDecoration &&
        (widget.decoration as BoxDecoration).borderRadius ==
            BorderRadius.circular(20) &&
        (widget.decoration as BoxDecoration).color == Colors.greenAccent);
    expect(greenContainer, findsOneWidget);
    expect(positionedWidget, findsOneWidget);
    expect(hexContainer, findsOneWidget);
    expect(grayContainer, findsOneWidget);
    expect(containerWithImage, findsWidgets);
    expect((tester.widget(hexContainer) as Container).padding,
        equals(const EdgeInsets.all(20)));
    expect(
      (tester.widget(textWidget) as Text).style,
      equals(
        const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
      ),
    );

    await tester.pumpWidget(const MyApp());

    await tester.pumpAndSettle();
  });
}
