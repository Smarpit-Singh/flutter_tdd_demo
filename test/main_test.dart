import 'package:flutter_tdd_demo/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  //For testing a widget
  testWidgets('MyWidget has a title and Message', (WidgetTester tester) async {

    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(MyWidget(title: 'T', message: 'M',));
  });
}
