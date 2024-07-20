import 'package:dark_light_theme/theme/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    themeData = _themeData == lightMode ? darkMode : lightMode;
  }

  bool isDarkDefaultMode() {
    return true;
  }
}
