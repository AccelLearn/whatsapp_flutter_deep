import 'package:flutter/material.dart';
import 'package:flutter_deep/common/utils/coloors.dart';

extension ExtendedTheme on BuildContext {
  // 在 context 里挂上 theme 属性
  // context.theme => current theme
  // 并且必须要在 lightTheme() 和 darkTheme() 里面配置 extensions
  // 没有配置的话在获取这个 theme 的时候会报错
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  const CustomThemeExtension(
      {this.circleImageColor,
      this.greyColor,
      this.blueColor,
      this.langBtnBgColor,
      this.langBtnHighlightColor,
      this.authAppBarTextColor});

  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighlightColor;
  final Color? authAppBarTextColor;

  static const lightMode = CustomThemeExtension(
      circleImageColor: Color(0xFF25D366),
      greyColor: Coloors.greyLight,
      blueColor: Coloors.blueLight,
      langBtnBgColor: Color(0xFFF7F8FA),
      langBtnHighlightColor: Color(0xFFE8E8ED),
      authAppBarTextColor: Coloors.greenLight);

  static const darkMode = CustomThemeExtension(
      circleImageColor: Coloors.greenDark,
      greyColor: Coloors.greyDark,
      blueColor: Coloors.blueDark,
      langBtnBgColor: Color(0xFF182229),
      langBtnHighlightColor: Color(0xFF09141A),
      authAppBarTextColor: Color(0xFFE9EDEF));

  @override
  ThemeExtension<CustomThemeExtension> copyWith(
      {Color? circleImageColor,
      Color? greyColor,
      Color? blueColor,
      Color? langBtnBgColor,
      Color? langBtnHighlightColor,
      Color? authAppBarTextColor}) {
    return CustomThemeExtension(
        circleImageColor: circleImageColor ?? this.circleImageColor,
        greyColor: greyColor ?? this.greyColor,
        blueColor: blueColor ?? this.blueColor,
        langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
        langBtnHighlightColor:
            langBtnHighlightColor ?? this.langBtnHighlightColor,
        authAppBarTextColor: authAppBarTextColor ?? this.authAppBarTextColor);
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
        circleImageColor:
            Color.lerp(circleImageColor, other.circleImageColor, t),
        greyColor: Color.lerp(greyColor, other.greyColor, t),
        blueColor: Color.lerp(blueColor, other.blueColor, t),
        langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
        langBtnHighlightColor:
            Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t),
        authAppBarTextColor:
            Color.lerp(authAppBarTextColor, other.authAppBarTextColor, t));
  }
}
