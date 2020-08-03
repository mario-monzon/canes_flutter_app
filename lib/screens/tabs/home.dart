import 'package:canes_app/widget/home/news_list_widget.dart';
import 'package:canes_app/widget/util/tab_right_separator.dart';
import 'package:flutter/material.dart';

import '../../design/design_breakpoints.dart';
import '../../generated/l10n.dart';
import '../../nested_navigation_router.dart';
import '../../widget/general/nested_navigator.dart';

// ignore: public_member_api_docs
class Tab1Screen extends StatelessWidget {
  // ignore: public_member_api_docs
  const Tab1Screen({@required this.navigatorKey});

  /// The unique key for the nested navigator of this screen
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return NestedNavigator(
        navigatorKey: navigatorKey,
        navigationRoutes: NestedNavigationRouter(
            initialRoute: 'tap_1',
            builder: (context) {
              return (context) => LayoutBuilder(
                  builder: (context, constraints) => Container(
                      child: DefaultTabController(
                          length: 2,
                          child: Scaffold(
                            appBar: AppBar(
                                title: Text(S.of(context).tab1),
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
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  labelPadding: EdgeInsets.all(0),
                                  indicatorPadding: EdgeInsets.all(0),
                                  tabs: [
                                    TabRightSeparator(text: 'News'),
                                    Tab(
                                      text: 'Releases',
                                    )
                                  ],
                                )),
                            body: TabBarView(children: <Widget>[
                              NewsListWidget(),
                              NewsListWidget()
                            ]),
                          ))));
            }));
  }
}
