import 'package:flutter/material.dart';

/// An Offstage widget that can hold its own navigation tree
class NestedNavigator extends StatefulWidget {
  // ignore: public_member_api_docs
  const NestedNavigator(
      {@required this.navigatorKey, @required this.navigationRoutes});

  /// A unique key for this navigator
  final GlobalKey<NavigatorState> navigatorKey;

  /// The nested navigation routes
  final NavigationRouterInterface navigationRoutes;

  @override
  _NestedNavigatorState createState() => _NestedNavigatorState();
}

class _NestedNavigatorState extends State<NestedNavigator> {
  HeroController _heroController;

  @override
  void initState() {
    super.initState();

    _heroController = HeroController(createRectTween: _createRectTween);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      initialRoute: widget.navigationRoutes.initialRoute,
      observers: [_heroController],
      onGenerateRoute: (routeSettings) => MaterialPageRoute<void>(
        settings: routeSettings,
        builder: routeSettings.name == widget.navigationRoutes.initialRoute
            ? widget.navigationRoutes.initialRouteBuilder(context)
            : widget.navigationRoutes
                .routesBuilder(context, routeSettings.name),
      ),
    );
  }

  RectTween _createRectTween(Rect begin, Rect end) {
    return MaterialRectArcTween(begin: begin, end: end);
  }
}

/// Holds routes and route builders for nested navigation
class NavigationRouterInterface {
  /// Unique key for the navigator
  String initialRoute;

  /// Builder for the initial route of the navigator tree
  // ignore: missing_return
  WidgetBuilder initialRouteBuilder(BuildContext context) {}

  /// A method that will build all required routes
  // ignore: missing_return
  WidgetBuilder routesBuilder(BuildContext context, String routeName) {}
}
