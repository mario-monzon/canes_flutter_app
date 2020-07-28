import 'net/api.dart';

/// Global scope app singleton, for initializations needed app wide
class Global {
  // ignore: public_member_api_docs
  factory Global() {
    return _global;
  }

  Global._internal();

  // this is a global singleton
  static final Global _global = Global._internal();

  /// The api object used to make calls
  ApiService api;

  /// Recreates the api object with a new base url
  void initializeApi(
    String baseUrl,
    String language,
    int shopId,
  ) {}
}
