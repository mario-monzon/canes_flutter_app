import 'package:canes_app/design/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('App theme colors test', () {
    expect(AppColors.defaultColor, Colors.black);
    expect(AppColors.backgroundColor, Colors.white);
    expect(AppColors.disabledColor, Colors.black54);
    expect(AppColors.dividerColor, Colors.black54);
    expect(AppColors.selectedColor, const Color(0xFFCCCCCC));
    expect(AppColors.touchableColor, const Color.fromARGB(255, 64, 122, 177));
    expect(AppColors.warning, const Color(0xFFFAF3E5));
    expect(AppColors.warningDark, const Color(0xFFFFD4B8));
    expect(AppColors.ok, const Color(0xFF0A8A00));
    expect(AppColors.error, const Color(0xFFD52F23));
  });
}
