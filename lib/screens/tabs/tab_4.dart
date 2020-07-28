import 'package:flutter/material.dart';

import '../../design/design_breakpoints.dart';
import '../../generated/l10n.dart';
import '../../nested_navigation_router.dart';
import '../../widget/general/nested_navigator.dart';

// ignore: public_member_api_docs
class Tab4Screen extends StatelessWidget {
  // ignore: public_member_api_docs
  const Tab4Screen({@required this.navigatorKey});

  /// The unique key for the nested navigator of this screen
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return NestedNavigator(
        navigatorKey: navigatorKey,
        navigationRoutes: NestedNavigationRouter(
            initialRoute: 'tap_4',
            builder: (context) {
              return (context) => LayoutBuilder(
                  builder: (context, constraints) => Container(
                      child: Scaffold(
                          appBar: AppBar(
                            title: Text(S.of(context).tab4),
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
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                Text(S.of(context).tab4),
                                FlatButton(
                                  color: Colors.grey,
                                  onPressed: () {
                                    Navigator.pushNamed(context,
                                        NestedNavigationRouter.tapDetail,
                                        arguments: S.of(context).tab4);
                                  },
                                  child: Text(S.of(context).go_to_details,
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ])))));
            }));
  }
}
