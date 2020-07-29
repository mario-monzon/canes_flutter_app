import 'package:canes_app/util/text_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Text utils tests', () {
    test('isValidUrl() test', () {
      expect('https://www.google.com'.isValidUrl(), true);
      expect('not a url'.isValidUrl(), false);
    });

    test('isEmail() test', () {
      expect('john.doe@example.com'.isEmail(), true);
      expect('not an email'.isEmail(), false);
      expect('bad@email'.isEmail(), false);
      expect('bademail.es'.isEmail(), false);
    });

    test('isPhone() test', () {
      expect('123456789'.isPhone(), true);
      expect('not a phone'.isPhone(), false);
      expect('+123'.isPhone(), false);
    });
  });
}
