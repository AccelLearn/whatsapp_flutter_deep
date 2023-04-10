import 'package:flutter/material.dart';
import 'package:flutter_deep/common/extension/custom_theme_extension.dart';
import 'package:flutter_deep/common/utils/coloors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  Future showBottomSheet(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 4,
                  width: 50,
                  // 设置颜色、渐变、图像、边框、圆角、阴影等样式来装饰 widget
                  decoration: BoxDecoration(
                      color: context.theme.greyColor!.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5)),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 40),
                    const Expanded(
                      child: Text(
                        'App Language',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    IconButton(
                      // 关闭当前页面并返回到上一个页面
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close_outlined,
                          color: Coloors.greyDark),
                      splashColor: Colors.transparent,
                      splashRadius: 22,
                      iconSize: 22,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(minWidth: 40),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Divider(
                  color: context.theme.greyColor!.withOpacity(0.3),
                  thickness: .5,
                ),
                RadioListTile(
                  value: true,
                  groupValue: true,
                  onChanged: (value) {},
                  activeColor: context.theme.circleImageColor,
                  title: const Text(
                    'English',
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text(
                    "Phone's Language",
                    style: TextStyle(color: context.theme.greyColor),
                  ),
                ),
                RadioListTile(
                  value: true,
                  groupValue: false,
                  onChanged: (value) {},
                  activeColor: context.theme.circleImageColor,
                  title: const Text(
                    '简体中文',
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text(
                    'Simply Chinese',
                    style: TextStyle(color: context.theme.greyColor),
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // Material 组件是 Dart 开发中的一种 UI 组件库，它提供了一系列基础的 UI 组件，
    // 如按钮、文本框、进度条等，可以用于构建美观、易用的应用程序。
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      // InkWell 组件是一个可响应点击事件的矩形区域，通常用于实现按钮、链接等交互性功能
      child: InkWell(
        onTap: () => showBottomSheet(context),
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
