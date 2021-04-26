import 'package:flutter/material.dart';
import 'package:flutter_tdd_demo/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //For testing a widget
  testWidgets('Find a Text widget', (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Text('H'),
      ),
    ));

    //Find one widget with H text
    expect(find.text('H'), findsOneWidget);
  });

  testWidgets('Find a widget using a Key', (WidgetTester tester) async {
    final testKey = Key('K');

    await tester.pumpWidget(MaterialApp(
      key: testKey,
      home: Container(),
    ));

    expect(find.byKey(testKey), findsOneWidget);
  });
}
