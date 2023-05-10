import 'package:flutter/material.dart';
import 'package:flutter_theme_test/src/core/enums/app_enum.dart';
import 'package:flutter_theme_test/src/core/services/local_storage.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final _themeMode = ThemeMode.light.obs;

  ThemeMode get themeMode {
    bool isDark = LocalStorage.getData(key: LocalStorageKey.isDarkMode) ?? false;
    _themeMode.value = isDark ? ThemeMode.dark : ThemeMode.light;
    return _themeMode.value;
  }

  void toggleTheme(bool isDark) {
    _themeMode.value = isDark ? ThemeMode.dark : ThemeMode.light;

    /// set in locale storage
    LocalStorage.saveData(
      key: LocalStorageKey.isDarkMode,
      data: isDark,
    );
  }
}
