import 'package:flutter/foundation.dart';

/// State class that hold the currently selected menu option in
/// the main app navigation
class MainMenuState extends ChangeNotifier {
  int _selectedOption = 0;

  /// Gets the currently selected option
  int get selectedOption => _selectedOption;

  /// Sets the current option
  set selectedOption(int value) {
    _lastSelectedOption = _selectedOption;
    _selectedOption = value;
    notifyListeners();
  }

  int _lastSelectedOption;

  /// Tells if the user has selected the same option again
  bool get repeatedSelection => _lastSelectedOption == _selectedOption;
}
