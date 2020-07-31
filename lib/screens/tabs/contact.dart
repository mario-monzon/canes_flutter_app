import 'package:canes_app/widget/contact/contact_datas_widget.dart';
import 'package:canes_app/widget/contact/contact_social_buttons_widget.dart';
import 'package:canes_app/widget/contact/training_days_widget.dart';
import 'package:flutter/material.dart';

import '../../design/design_breakpoints.dart';
import '../../generated/l10n.dart';
import '../../nested_navigation_router.dart';
import '../../widget/general/nested_navigator.dart';

class Tab5Screen extends StatelessWidget {
  // ignore: public_member_api_docs
  const Tab5Screen({@required this.navigatorKey});

  /// The unique key for the nested navigator of this screen
  final GlobalKey<NavigatorState> navigatorKey;
  @override
  Widget build(BuildContext context) {
    return NestedNavigator(
        navigatorKey: navigatorKey,
        navigationRoutes: NestedNavigationRouter(
            initialRoute: 'tap_5',
            builder: (context) {
              return (context) => LayoutBuilder(
                  builder: (context, constraints) => Container(
                      child: Scaffold(
                          appBar: AppBar(
                            title: Text(S.of(context).tab5),
                            leading: constraints.maxHeight >= Breakpoints.br480
                                ? null
                                : IconButton(
                                    icon: Icon(Icons.menu),
                                    onPressed: () {
                                      Scaffold.of(context).openDrawer();
                                    },
                                  ),
                          ),
                          body: Center(
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                Column(
                                  children: <Widget>[
                                    ContactDatasWidget(),
                                    TrainingDaysWidget(),
                                    SocialButtonsWidget(),
                                  ],
                                )
                              ])))));
            }));
  }
}
