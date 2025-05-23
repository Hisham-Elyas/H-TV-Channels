import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helpers/shared_pref_helper.dart';

class ThemeController extends GetxController {
  ThemeMode _themeMode = ThemeMode.light;
  final String _themeKey = 'isDarkMode';
  FeedbackThemeData feedbackTheme = FeedbackThemeData.light();

  @override
  void onInit() {
    _loadTheme().then((_) => update());
    super.onInit();
  }

  ThemeMode get themeMode => _themeMode;
  Future<void> _loadTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool? isDark = sharedPreferences.getBool(_themeKey);
    _themeMode = isDark == null
        ? ThemeMode.dark
        : isDark
            ? ThemeMode.dark
            : ThemeMode.light;
    // update();
  }

  Future<void> toggleTheme(bool isDark) async {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    feedbackTheme =
        isDark ? FeedbackThemeData.dark() : FeedbackThemeData.light();
    await SharedPrefHelper.setData(_themeKey, isDark);
    update();
  }
}
