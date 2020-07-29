import 'package:canes_app/widget/util/overlay_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'util/testable_widget.dart';

void main() {
  const widgetHidden = TestableWidget(
    child: OverlayError(
      visible: false,
    ),
  );

  const widgetVisible = TestableWidget(
    child: OverlayError(
      visible: true,
      errorText: 'I am error',
    ),
  );

  group('OverlayError widget tests', () {
    testWidgets('Must have some widgets when hidden', (tester) async {
      await tester.pumpWidget(widgetHidden);
      await tester.pumpAndSettle();

      expect(find.byType(Visibility), findsOneWidget);
      expect(find.byType(Opacity), findsNothing);
      expect(find.byType(Container), findsNothing);
      expect(find.byType(Center), findsNothing);
      expect(find.byType(Text), findsNothing);
    });

    testWidgets('Must have some widgets when visible', (tester) async {
      await tester.pumpWidget(widgetVisible);
      await tester.pumpAndSettle();

      expect(find.byType(Visibility), findsOneWidget);
      expect(find.byType(Opacity), findsOneWidget);
      expect(find.byType(Container), findsOneWidget);
      expect(find.byType(Center), findsOneWidget);
      expect(find.byType(Text), findsOneWidget);
    });

    testWidgets('Must have the correct label', (tester) async {
      await tester.pumpWidget(widgetVisible);
      await tester.pumpAndSettle();

      expect(find.text('I am error'), findsOneWidget);
    });
  });
}
