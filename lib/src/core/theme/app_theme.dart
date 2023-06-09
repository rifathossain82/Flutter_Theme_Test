import 'package:flutter/material.dart';
import 'package:flutter_theme_test/src/core/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: kPrimarySwatchColor,
    primaryColor: kLightPrimaryColor,
    scaffoldBackgroundColor: kLightScaffoldBgColor,
    appBarTheme: AppBarTheme(
      foregroundColor: kWhite,
      backgroundColor: kLightPrimaryColor,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: kLightPrimaryColor,
      foregroundColor: kWhite,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(Typography.blackCupertino),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStatePropertyAll(kLightPrimaryColor),
      checkColor: MaterialStatePropertyAll(kWhite),
      side: BorderSide(color: kGrey),
    ),
    cardTheme: CardTheme(
      color: kWhite,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    iconTheme: IconThemeData(
      color: kGrey,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: kPrimarySwatchColor,
    primaryColor: kDarkPrimaryColor,
    scaffoldBackgroundColor: kDarkScaffoldBgColor,
    appBarTheme: AppBarTheme(
      foregroundColor: kWhite,
      backgroundColor: kDarkPrimaryColor,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStatePropertyAll(kWhite),
      trackColor: MaterialStatePropertyAll(kGrey),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: kDarkPrimaryColor,
      foregroundColor: kWhite,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(Typography.whiteCupertino),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStatePropertyAll(kWhite),
      checkColor: MaterialStatePropertyAll(kDarkPrimaryColor),
      side: BorderSide(color: kGrey),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStatePropertyAll(kWhite),
    ),
    cardTheme: CardTheme(
      color: kDarkPrimaryColor,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    iconTheme: IconThemeData(
      color: kWhite,
    ),
  );
}
