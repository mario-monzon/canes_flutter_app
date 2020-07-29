import 'package:canes_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('i10n tests', () {
    test('Check i10n is working', () {
      S.load(const Locale('en')).then((value) => expect(value.test, 'Test'));
    });
  });
}
