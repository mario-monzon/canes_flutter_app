import 'package:canes_app/repository/news_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../design/design_breakpoints.dart';
import '../state/navigation_state.dart';
import '../widget/general/lateral_menu.dart';
import '../widget/general/main_bottom_navigation.dart';
import 'tabs/contact.dart';
import 'tabs/home.dart';
import 'tabs/scores.dart';
import 'tabs/sponsors.dart';
import 'tabs/team.dart';

/// Main screen of the app, from which all other content hangs
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<GlobalKey<NavigatorState>> navigatorKeys =
      List<GlobalKey<NavigatorState>>.generate(
          5, (i) => GlobalKey<NavigatorState>());

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildPages(int selectedIndex) {
      return [
        Offstage(
          offstage: selectedIndex != MainTab.tap_1.index,
          child: Tab1Screen(
            navigatorKey: navigatorKeys[MainTab.tap_1.index],
          ),
        ),
        Offstage(
          offstage: selectedIndex != MainTab.tap_2.index,
          child: Tab2Screen(
            navigatorKey: navigatorKeys[MainTab.tap_2.index],
          ),
        ),
        Offstage(
          offstage: selectedIndex != MainTab.tap_3.index,
          child: Tab3Screen(
            navigatorKey: navigatorKeys[MainTab.tap_3.index],
          ),
        ),
        Offstage(
          offstage: selectedIndex != MainTab.tap_4.index,
          child: Tab4Screen(
            navigatorKey: navigatorKeys[MainTab.tap_4.index],
          ),
        ),
        Offstage(
          offstage: selectedIndex != MainTab.tap_5.index,
          child: Tab5Screen(
            navigatorKey: navigatorKeys[MainTab.tap_5.index],
          ),
        ),
      ];
    }

    Widget _buildNavStack(MainMenuState state) {
      return IndexedStack(
        index: state.selectedOption,
        children: _buildPages(state.selectedOption),
      );
    }

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MainMenuState(),
          ),
          ChangeNotifierProvider(
            create: (context) => NewsRepository.getNewsResourceRetry(),
          )
        ],
        child: Consumer<MainMenuState>(builder: (context, state, child) {
          // if the user select the same tab two times, all the
          // corresponding nested navigator stack will be popped
          // to the initalRoute
          if (state.repeatedSelection) {
            _resetTabNavigator(navigatorKeys[state.selectedOption]);
          }

          return WillPopScope(
            onWillPop: () async {
              // Checks if the corresponding child navigator has any
              // pending route to be popped from the tree
              final nestedPop = await navigatorKeys[state.selectedOption]
                  .currentState
                  .maybePop();
              var shouldPop = !nestedPop;

              // If there's no child navigator pending pops,
              // if we are not in the first tab, go to the first tab
              if (shouldPop && state.selectedOption != 0) {
                state.selectedOption = 0;
                shouldPop = false;
              }

              return shouldPop;
            },
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Scaffold(
                  // The bottom navigation is not rendered if the total
                  // available height is too sort (<480) or too wide (>960)
                  bottomNavigationBar:
                      constraints.maxHeight >= Breakpoints.br480 &&
                              constraints.maxWidth < Breakpoints.br960
                          ? const MainBottomNavigation()
                          : null,
                  drawer: constraints.maxHeight >= Breakpoints.br480
                      ? null
                      : Drawer(child: LateralMenu()),
                  body: constraints.maxWidth < Breakpoints.br960
                      ? _buildNavStack(state)
                      : Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 240,
                              child: LateralMenu(),
                            ),
                            Expanded(
                                child: Container(
                              child: _buildNavStack(state),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            )),
                          ],
                        ),
                );
              },
            ),
          );
        }));
  }

  void _resetTabNavigator(GlobalKey<NavigatorState> navigatorKey) {
    navigatorKey.currentState?.popUntil((route) =>
        route.settings.name == navigatorKey.currentState.widget.initialRoute);
  }
}
