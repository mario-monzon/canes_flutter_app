import 'package:flutter/material.dart';

import 'screens/tabs/tab_detail.dart';
import 'widget/general/nested_navigator.dart';

/// Routes for Home tab
class NestedNavigationRouter implements NavigationRouterInterface {
  @override
  String initialRoute;

  // ignore: public_member_api_docs, sort_constructors_first
  NestedNavigationRouter({@required this.initialRoute, @required this.builder});

  /// The builder for the initial route
  WidgetBuilder Function(BuildContext context) builder;

  /// News details screen route
  static const tapDetail = 'tabs/tab_detail';

  @override
  WidgetBuilder initialRouteBuilder(BuildContext context) => builder(context);

  @override
  // ignore: missing_return
  WidgetBuilder routesBuilder(BuildContext context, String routeName) {
    switch (routeName) {
      case tapDetail:
        return (context) => const TabDetailScreen();
    }
  }
}
