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

  TextStyle get buttonTextStyle =>
      Theme.of(this).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: kWhite,
          );

  TextStyle get outlinedButtonTextStyle =>
      Theme.of(this).textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.bold,
        color: kPrimarySwatchColor,
      );

  bool get isDark => Theme.of(this).brightness == Brightness.dark;
}
