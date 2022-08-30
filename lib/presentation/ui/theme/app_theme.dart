import 'package:flutter/material.dart';
import 'package:yandex_to_do_app/application/application.dart';
export 'dark_theme.dart';
export 'light_theme.dart';
export 'bloc/theme_bloc.dart';

abstract class AppTheme {
  late ThemeData themeData;

  final Color supportSeparator;
  final Color supportOverlay;

  final Color labelPrimary;
  final Color labelSecondary;
  final Color labelTertiary;
  final Color labelDisable;

  final Color lightGrey;

  final Color backPrimary;
  final Color backSecondary;
  final Color backElevated;

  AppTheme({
    required this.supportSeparator,
    required this.supportOverlay,
    required this.labelPrimary,
    required this.labelSecondary,
    required this.labelTertiary,
    required this.labelDisable,
    required this.lightGrey,
    required this.backPrimary,
    required this.backSecondary,
    required this.backElevated,
  });

  Color get importanceColor => getIt.get<RemoteConfigService>().importanceColor;

  final red = const Color(0xFFFF3B30);
  final green = const Color(0xFF34C759);
  final blue = const Color(0xFF007AFF);
  final grey = const Color(0xFF8E8E93);

  final white = const Color(0xFFFFFFFF);
}

extension CustomTextTheme on TextTheme {
  TextStyle get largeTitle => const TextStyle(
        fontSize: 32,
        height: 38 / 32,
      );

  TextStyle get title => const TextStyle(
        fontSize: 20,
        height: 32 / 20,
        fontWeight: FontWeight.w500,
      );

  TextStyle get button => const TextStyle(
        fontSize: 14,
        height: 24 / 14,
      );

  TextStyle get body => const TextStyle(
        fontSize: 16,
        height: 20 / 16,
        fontWeight: FontWeight.w400,
      );

  TextStyle get subhead => const TextStyle(
        fontSize: 14,
        height: 20 / 14,
      );
}
