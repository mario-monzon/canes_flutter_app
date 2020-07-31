import 'package:canes_app/widget/sponsors/sponsor_coordinate.dart';
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
                          body: SponsorListWidget())));
            }));
  }
}
