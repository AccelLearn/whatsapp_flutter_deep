import 'package:flutter/material.dart';
import 'package:flutter_deep/common/extension/custom_theme_extension.dart';
import 'package:flutter_deep/common/utils/coloors.dart';

ThemeData lightTheme() {
  final base = ThemeData.light();
  return base.copyWith(
      extensions: [
        CustomThemeExtension.lightMode,
      ],
      colorScheme: base.colorScheme.copyWith(
        background: Coloors.backgroundLight,
      ),
      scaffoldBackgroundColor: Coloors.backgroundLight,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Coloors.greenDark,
          foregroundColor: Coloors.backgroundLight,
          splashFactory: NoSplash.splashFactory,
          elevation: 0.0,
          shadowColor: Colors.transparent,
        ),
      ));
}
