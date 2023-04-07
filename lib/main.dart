import 'package:flutter/material.dart';
import 'package:flutter_deep/common/theme/dark_theme.dart';
import 'package:flutter_deep/common/theme/light_theme.dart';
import 'package:flutter_deep/feature/welcome/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 是否展示右上角 debug 的横幅
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp Me',
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.system,
        home: const WelcomePage());
  }
}
