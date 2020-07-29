import 'package:canes_app/widget/util/checkbox_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'util/stateful_container.dart';
import 'util/testable_widget.dart';

void main() {
  final _formKey = GlobalKey<FormState>();
  var _checked = false;

  final widget = TestableWidget(
    child: StatefulContainer(
      child: Form(
        key: _formKey,
        child: Material(
          child: Column(
            children: [
              CheckboxFormField(
                label: const Text('foo'),
                value: _checked,
                onChanged: (value) => _checked = value,
                validator: (value) {
                  if (!_checked) {
                    return 'validation error';
                  }
                  return null;
                },
              ),
              RaisedButton(
                child: const Text('Submit'),
                onPressed: () => _formKey.currentState.validate(),
              )
            ],
          ),
        ),
      ),
    ),
  );

  group('CheckboxFormField widget tests', () {
    testWidgets('Must have some widgets', (tester) async {
      await tester.pumpWidget(widget);
      await tester.pumpAndSettle();

      expect(find.byType(Checkbox), findsOneWidget,
          reason: 'Must have a Checkbox');
      expect(find.byType(Text), findsNWidgets(2),
          reason:
              // ignore: lines_longer_than_80_chars
              'Must have two textboxes: one for the label and another for the error');
    });

    testWidgets('Label check', (tester) async {
      await tester.pumpWidget(widget);
      await tester.pumpAndSettle();

      expect(find.text('foo'), findsOneWidget);
    });

    testWidgets('Check validation', (tester) async {
      await tester.pumpWidget(widget);
      await tester.pumpAndSettle();

      await tester.tap(find.byType(RaisedButton));
      await tester.pumpAndSettle();

      expect(find.text('validation error'), findsOneWidget,
          reason: 'Should have an error text when unchecked');

      await tester.tap(find.byType(Checkbox));
      await tester.pumpAndSettle();
      await tester.tap(find.byType(RaisedButton));
      await tester.pumpAndSettle();

      expect(find.text('validation error'), findsNothing,
          reason: "Shouldn't have an error text when checked");
    });
  });
}
