import 'package:canes_app/widget/util/overlay_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'util/testable_widget.dart';

void main() {
  const widgetHidden = TestableWidget(
    child: OverlayProgressIndicator(
      visible: false,
    ),
  );

  group('OverlayProgressIndicator widget tests', () {
    testWidgets('Must have some widgets when hidden', (tester) async {
      await tester.pumpWidget(widgetHidden);
      await tester.pumpAndSettle();

      expect(find.byType(Visibility), findsOneWidget);
      expect(find.byType(Opacity), findsNothing);
      expect(find.byType(Container), findsNothing);
      expect(find.byType(Center), findsNothing);
      expect(find.byType(CircularProgressIndicator), findsNothing);
    });
  });
}
