// ignore: public_member_api_docs
extension StringExtension on String {
  /// Check is a string is a valid url
  bool isValidUrl() {
    return this != null && isNotEmpty && Uri.parse(this).isAbsolute;
  }

  /// Check if a string is a valid email
  bool isEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }

  /// Check if a string is a valid phone
  bool isPhone() {
    return RegExp(r'^[0-9]*$').hasMatch(this);
  }
}
