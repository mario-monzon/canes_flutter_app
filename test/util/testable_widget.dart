import 'package:canes_app/generated/l10n.dart';
import 'package:canes_app/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class TestableWidget extends StatelessWidget {
  const TestableWidget(
      {Key key, @required this.child, this.locale = const Locale('en')})
      : super(key: key);

  final Widget child;
  final Locale locale;

  @override
  Widget build(BuildContext context) {
    Global().initializeApi();

    return MediaQuery(
        data: const MediaQueryData(),
        child: MaterialApp(
            home: Localizations(
          child: child,
          delegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          locale: locale,
        )));
  }
}
