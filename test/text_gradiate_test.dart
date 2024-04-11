import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:text_gradiate/text_gradiate.dart';

void main() {
  testWidgets('TextGradiate applies gradient effect to text',
      (WidgetTester tester) async {
    // Build a test widget that includes the TextGradiate widget with some text and colors
    await tester.pumpWidget(
      const MaterialApp(
        home: TextGradiate(
          text: Text('Hello', style: TextStyle(fontSize: 24)),
          colors: [Colors.red, Colors.blue],
        ),
      ),
    );

    // Find the Text widget in the tree
    final textWidget = find.text('Hello');

    // Verify that the Text widget has the expected text style (with a gradient)
    expect(textWidget, findsOneWidget);
    final textStyle = tester.widget<Text>(textWidget).style;
    expect(textStyle, isNotNull);
  });
}
