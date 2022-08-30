import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_theme.dart';

class DarkTheme extends AppTheme {
  DarkTheme()
      : super(
          supportSeparator: const Color(0x33FFFFFF),
          supportOverlay: const Color(0x52000000),
          labelPrimary: const Color(0xFFFFFFFF),
          labelSecondary: const Color(0x99FFFFFF),
          labelTertiary: const Color(0x66FFFFFF),
          labelDisable: const Color(0x26FFFFFF),
          lightGrey: const Color(0xFF48484A),
          backPrimary: const Color(0xFF161618),
          backSecondary: const Color(0xFF252528),
          backElevated: const Color(0xFF3C3C3F),
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
