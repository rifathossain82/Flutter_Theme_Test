import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_theme_test/src/core/utils/color.dart';

extension BuildContextExtension on BuildContext {
  void unFocusKeyboard() => FocusScope.of(this).unfocus();

  dynamic get getArguments => ModalRoute.of(this)?.settings.arguments;

  double get screenHeight => MediaQuery.of(this).size.height;

  double get screenWidth => MediaQuery.of(this).size.width;

  Size get screenSize => MediaQuery.of(this).size;

  double get minScreenSize => min(MediaQuery.of(this).size.height, MediaQuery.of(this).size.width);

  double get maxScreenSize => max(MediaQuery.of(this).size.height, MediaQuery.of(this).size.width);

  Color get primaryColor => Theme.of(this).primaryColor;

  /// I'm using GetX for state management, that's why I can access textTheme
  /// by getX but when you use another state management, then you need to
  /// uncomment it to access textTheme by context
  // TextTheme get textTheme => Theme.of(this).textTheme;

  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  TextStyle get buttonTextStyle =>
      Theme.of(this).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: kWhite,
          );

  TextStyle get outlinedButtonTextStyle =>
      Theme.of(this).textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.bold,
        color: Theme.of(this).primaryColor,
      );
}
