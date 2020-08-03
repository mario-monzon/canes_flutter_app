import 'package:canes_app/widget/scores/scores/score_list_widget.dart';
import 'package:canes_app/widget/scores/standings/StandingListWidget.dart';
import 'package:flutter/material.dart';

import '../../design/design_breakpoints.dart';
import '../../generated/l10n.dart';
import '../../nested_navigation_router.dart';
import '../../widget/general/nested_navigator.dart';

// ignore: public_member_api_docs
class Tab3Screen extends StatelessWidget {
  // ignore: public_member_api_docs

  /// The unique key for the nested navigator of this screen
  final GlobalKey<NavigatorState> navigatorKey;

  const Tab3Screen({Key key, this.navigatorKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedNavigator(
        navigatorKey: navigatorKey,
        navigationRoutes: NestedNavigationRouter(
            initialRoute: 'tap_3',
            builder: (context) {
              return (context) => LayoutBuilder(
                  builder: (context, constraints) => Container(
                          child: DefaultTabController(
                        length: 2,
                        child: Scaffold(
                            appBar: AppBar(
                                title: Text(S.of(context).tab3),
                                leading:
                                    constraints.maxHeight >= Breakpoints.br480
                                        ? null
                                        : IconButton(
                                            icon: Icon(Icons.menu),
                                            onPressed: () {
                                              Scaffold.of(context).openDrawer();
                                            },
                                          ),
                                bottom: TabBar(
                                  tabs: <Widget>[
                                    Tab(text: 'Standing'),
                                    Tab(
                                      text: 'Scores',
                                    )
                                  ],
                                )),
                            body: TabBarView(
                              children: <Widget>[
                                StandingListWidget(),
                                ScoreListWidget()
                              ],
                            )),
                      )));
            }));
  }
}
