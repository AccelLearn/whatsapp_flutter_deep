import 'package:flutter/material.dart';
import 'package:flutter_deep/common/utils/coloors.dart';
import 'package:flutter_deep/common/widgets/custom_elevated_button.dart';
import 'package:flutter_deep/feature/welcome/widgets/language_button.dart';
import 'package:flutter_deep/feature/welcome/widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold 是 Material library 中提供的 widget，
    // 它提供了默认的导航栏、标题和包含主屏幕 widget 树的 body 属性
    return Scaffold(
      backgroundColor: Coloors.backgroundDark,
      body: Center(
          child: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 50.0),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: Coloors.greenDark,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40.0),
          Expanded(
              child: Column(
            children: [
              const Text(
                'Welcome to WhatsAPP',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const PrivacyAndTerms(),
              CustomElevatedButton(
                  onPressed: () {}, text: 'Agree and continue'),
              const SizedBox(height: 50),
              const LanguageButton()
            ],
          ))
        ],
      )),
    );
  }
}
