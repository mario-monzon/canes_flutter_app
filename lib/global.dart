import 'dart:io';

import 'net/api.dart';

/// Global scope app singleton, for initializations needed app wide
class Global {
  // ignore: public_member_api_docs
  factory Global() {
    return _global;
  }

  static final String webCanes = 'http://teldecanes.es/index.php/en/';
  static final String facebookCanes = Platform.isIOS
      ? 'fb://profile/1931826973734524'
      : 'fb://page/1931826973734524';
  static final String instagramCanes =
      'https://www.instagram.com/canes_american_football/?hl=es';
  static final String twitterCanes =
      'https://twitter.com/footballcanes?lang=es';

  Global._internal();

  // this is a global singleton
  static final Global _global = Global._internal();

  /// The api object used to make calls
  ApiService api;

  /// Recreates the api object with a new base url
  void initializeApi() {
    api = ApiService.create();
  }
}
