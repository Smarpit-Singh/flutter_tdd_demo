import 'package:flutter/material.dart';
import 'package:flutter_tdd_demo/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  //Test for Add and Remove todos
  testWidgets('Add and remove a todo', (WidgetTester tester) async {

    //Pump or Make a TodoList widget
    await tester.pumpWidget(TodoList());

    // Enter 'hi' into the TextField.
    await tester.enterText(find.byType(TextField), 'hi');

    // Tap the add button.
    await tester.tap(find.byType(FloatingActionButton));

    // Rebuild the widget with the new item.
    await tester.pump();

    // Expect to find the item on screen.
    expect(find.text('hi'), findsOneWidget);

    // Swipe the item to dismiss it.
    await tester.drag(find.byType(Dismissible), Offset(500.0, 0.0));

    // Build the widget until the dismiss animation ends.
    await tester.pumpAndSettle();

    // Ensure that the item is no longer on screen.
    expect(find.text('hi'), findsNothing);
  });
}
