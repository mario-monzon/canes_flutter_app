import 'package:canes_app/app.dart';
import 'package:canes_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  final widget = Localizations(
    delegates: [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    locale: const Locale('en'),
    child: App(),
  );

  group('App general tests', () {
    testWidgets('The app must be inside a SafeArea', (tester) async {
      mockNetworkImagesFor(() async {
        await tester.pumpWidget(widget);
        await tester.pumpAndSettle();
        expect(find.byType(SafeArea), findsOneWidget);
      });
    });

    testWidgets('The app must have a MaterialApp widget', (tester) async {
      mockNetworkImagesFor(() async {
        await tester.pumpWidget(widget);
        await tester.pumpAndSettle();
        expect(find.byType(MaterialApp), findsOneWidget);
      });
    });
  });
}
