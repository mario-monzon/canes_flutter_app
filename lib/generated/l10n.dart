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

  /// `Home`
  String get tab1 {
    return Intl.message(
      'Home',
      name: 'tab1',
      desc: '',
      args: [],
    );
  }

  /// `Team`
  String get tab2 {
    return Intl.message(
      'Team',
      name: 'tab2',
      desc: '',
      args: [],
    );
  }

  /// `Scores`
  String get tab3 {
    return Intl.message(
      'Scores',
      name: 'tab3',
      desc: '',
      args: [],
    );
  }

  /// `Sponsor`
  String get tab4 {
    return Intl.message(
      'Sponsor',
      name: 'tab4',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get tab5 {
    return Intl.message(
      'Contact',
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

  /// `Trainings Days`
  String get training_days {
    return Intl.message(
      'Trainings Days',
      name: 'training_days',
      desc: '',
      args: [],
    );
  }

  /// `Tuesday - Wednesday - Thursday`
  String get schedule_days {
    return Intl.message(
      'Tuesday - Wednesday - Thursday',
      name: 'schedule_days',
      desc: '',
      args: [],
    );
  }

  /// `20:30 - 22:00`
  String get schedule_hours {
    return Intl.message(
      '20:30 - 22:00',
      name: 'schedule_hours',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Email: canes.fa@gmail.com`
  String get email {
    return Intl.message(
      'Email: canes.fa@gmail.com',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone: xxx-xx-xx-xx`
  String get phone {
    return Intl.message(
      'Phone: xxx-xx-xx-xx',
      name: 'phone',
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