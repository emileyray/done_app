import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_theme.dart';

class LightTheme extends AppTheme {
  LightTheme()
      : super(
          supportSeparator: const Color(0x33000000),
          supportOverlay: const Color(0x0F000000),
          labelPrimary: const Color(0xFF000000),
          labelSecondary: const Color(0x99000000),
          labelTertiary: const Color(0x4D000000),
          labelDisable: const Color(0x26000000),
          lightGrey: const Color(0xFFD1D1D6),
          backPrimary: const Color(0xFFF7F6F2),
          backSecondary: const Color(0xFFFFFFFF),
          backElevated: const Color(0xFFFFFFFF),
        ) {
    themeData = ThemeData(
      fontFamily: 'Roboto',
      scaffoldBackgroundColor: backPrimary,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
      ),
      iconTheme: IconThemeData(
        color: blue,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(supportSeparator),
      ),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        color: backPrimary,
        titleTextStyle: const TextTheme().largeTitle.copyWith(
              color: labelPrimary,
            ),
      ),
      colorScheme: ColorScheme.light(
        primary: backPrimary,
        secondary: blue,
        onPrimary: labelPrimary,
      ),
      buttonTheme: ButtonThemeData(
        disabledColor: labelDisable,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(const TextTheme().button),
          foregroundColor: MaterialStateProperty.all(blue),
        ),
      ),
      dividerTheme: DividerThemeData(color: supportSeparator),
    );
  }
}
