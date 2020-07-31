import 'package:canes_app/screens/main_screen.dart';
import 'package:canes_app/screens/tabs/contact.dart';
import 'package:canes_app/screens/tabs/home.dart';
import 'package:canes_app/screens/tabs/scores.dart';
import 'package:canes_app/screens/tabs/sponsors.dart';
import 'package:canes_app/screens/tabs/team.dart';
import 'package:canes_app/state/locale_state.dart';
import 'package:canes_app/state/navigation_state.dart';
import 'package:canes_app/widget/general/main_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:provider/provider.dart';

import 'util/testable_widget.dart';

void main() {
  final widget = TestableWidget(
    child: ChangeNotifierProvider(
      create: (context) => LocaleState()..locale = const Locale('en'),
      // ignore: missing_return
      child: ChangeNotifierProvider<MainMenuState>(
          create: (context) => MainMenuState(),
          child: Consumer<MainMenuState>(
              builder: (context, state, child) => MainScreen())),
    ),
  );

  group('Home screen tests', () {
    testWidgets('Must have a bottom nav bar', (tester) async {
      await tester.runAsync(() async {
        await mockNetworkImagesFor(() async {
          await tester.pumpWidget(widget);
          await tester.pumpAndSettle();
        });
      });

      expect(find.byType(MainBottomNavigation), findsOneWidget);
      expect(find.byType(BottomNavigationBar), findsOneWidget);
    });

    testWidgets('Must have 5 screens in the stack', (tester) async {
      await tester.runAsync(() async {
        await mockNetworkImagesFor(() async {
          await tester.pumpWidget(widget);
          await tester.pumpAndSettle();

          final stack = tester.firstWidget(find.descendant(
            of: find.byType(MainScreen),
            matching: find.byType(IndexedStack),
          )) as IndexedStack;

          expect(stack.children.length, 5);
        });
      });
    });

    testWidgets('Must have the correct 5 screens in the stack', (tester) async {
      await tester.runAsync(() async {
        await mockNetworkImagesFor(() async {
          await tester.pumpWidget(widget);
          await tester.pumpAndSettle();
          expect(find.byType(Tab1Screen, skipOffstage: false), findsOneWidget);
          expect(find.byType(Tab2Screen, skipOffstage: false), findsOneWidget);
          expect(find.byType(Tab3Screen, skipOffstage: false), findsOneWidget);
          expect(find.byType(Tab4Screen, skipOffstage: false), findsOneWidget);
          expect(find.byType(Tab5Screen, skipOffstage: false), findsOneWidget);
        });
      });
    });
  });
}
