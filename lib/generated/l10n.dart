// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Canes App`
  String get appName {
    return Intl.message(
      'Canes App',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Tab 1`
  String get tab1 {
    return Intl.message(
      'Tab 1',
      name: 'tab1',
      desc: '',
      args: [],
    );
  }

  /// `Tab 2`
  String get tab2 {
    return Intl.message(
      'Tab 2',
      name: 'tab2',
      desc: '',
      args: [],
    );
  }

  /// `Tab 3`
  String get tab3 {
    return Intl.message(
      'Tab 3',
      name: 'tab3',
      desc: '',
      args: [],
    );
  }

  /// `Tab 4`
  String get tab4 {
    return Intl.message(
      'Tab 4',
      name: 'tab4',
      desc: '',
      args: [],
    );
  }

  /// `Tab 5`
  String get tab5 {
    return Intl.message(
      'Tab 5',
      name: 'tab5',
      desc: '',
      args: [],
    );
  }

  /// `This is detail of`
  String get this_is_detail_tap {
    return Intl.message(
      'This is detail of',
      name: 'this_is_detail_tap',
      desc: '',
      args: [],
    );
  }

  /// `Detail`
  String get go_to_details {
    return Intl.message(
      'Detail',
      name: 'go_to_details',
      desc: '',
      args: [],
    );
  }

  /// `There was a problem`
  String get errorNetworkGeneric {
    return Intl.message(
      'There was a problem',
      name: 'errorNetworkGeneric',
      desc: '',
      args: [],
    );
  }

  /// `We are having problems with our service`
  String get errorNetworkServer {
    return Intl.message(
      'We are having problems with our service',
      name: 'errorNetworkServer',
      desc: '',
      args: [],
    );
  }

  /// `You are not authorized`
  String get errorNetworkUnauthorized {
    return Intl.message(
      'You are not authorized',
      name: 'errorNetworkUnauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Test`
  String get test {
    return Intl.message(
      'Test',
      name: 'test',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}