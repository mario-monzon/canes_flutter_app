import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../repository/resource.dart';

/// State of the current app locale
class LocaleState extends ChangeNotifier {
  Locale _locale;
  Locale _previous;

  // ignore: public_member_api_docs
  Locale get locale => _locale;

  // ignore: public_member_api_docs
  Status status = Status.none;

  // ignore: public_member_api_docs
  set locale(Locale value) {
    // Once the settings are loaded set the app locale
    if (_locale?.languageCode != value.languageCode) {
      _previous = _locale;
      status = Status.working;
      _locale = value;

      S.load(_locale).then((value) {
        status = Status.loaded;
        notifyListeners();
      });
    }
  }

  /// Tells if the locale changed
  bool get changed => _previous != _locale;
}
