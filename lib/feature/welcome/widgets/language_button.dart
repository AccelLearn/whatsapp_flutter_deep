import 'package:flutter/material.dart';
import 'package:flutter_deep/common/extension/custom_theme_extension.dart';
import 'package:flutter_deep/common/utils/coloors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Material 组件是 Dart 开发中的一种 UI 组件库，它提供了一系列基础的 UI 组件，
    // 如按钮、文本框、进度条等，可以用于构建美观、易用的应用程序。
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      // InkWell 组件是一个可响应点击事件的矩形区域，通常用于实现按钮、链接等交互性功能
      child: InkWell(
        onTap: () {},
        splashFactory: NoSplash.splashFactory,
        borderRadius: BorderRadius.circular(20),
        highlightColor: context.theme.langBtnHighlightColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Row(mainAxisSize: MainAxisSize.min, children: const [
            Icon(Icons.language, color: Coloors.greenDark),
            SizedBox(width: 6),
            Text(
              'English',
              style: TextStyle(color: Coloors.greenDark),
            ),
            SizedBox(width: 6),
            Icon(Icons.keyboard_arrow_down, color: Coloors.greenDark)
          ]),
        ),
      ),
    );
  }
}
