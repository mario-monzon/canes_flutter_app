import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'design/theme.dart';
import 'flavors.dart';
import 'generated/l10n.dart';
import 'screens/main_screen.dart';
import 'state/locale_state.dart';

/// The main app entry point
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  LocaleState _localeState;

  @override
  void initState() {
    super.initState();

    _localeState = LocaleState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: F.title,
        theme: AppTheme.main,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: MainScreen(),
        initialRoute: '/');
  }

  @override
  void dispose() {
    _localeState.dispose();

    super.dispose();
  }
}
