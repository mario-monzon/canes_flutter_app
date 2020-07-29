import 'package:canes_app/state/navigation_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tested = MainMenuState();

  group('Navigation state tests', () {
    test('Construction', () {
      expect(tested != null, true);
      expect(tested.selectedOption, 0);
      expect(tested.repeatedSelection, false);
    });

    test('Selected option change', () {
      tested.selectedOption = 1;
      expect(tested.selectedOption, 1);
      expect(tested.repeatedSelection, false);
    });

    test('Selection repeated', () {
      tested.selectedOption = 1;
      tested.selectedOption = 1;
      expect(tested.selectedOption, 1);
      expect(tested.repeatedSelection, true);
    });
  });
}
