import 'package:flutter/material.dart';
import 'package:flutter_deep/common/utils/coloors.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 36.0),
      child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
              text: 'Read our',
              style: TextStyle(color: Coloors.greyDark, height: 1.5),
              children: [
                TextSpan(
                  text: ' Privacy Policy',
                  style: TextStyle(
                    color: Coloors.greenDark,
                  ),
                ),
                TextSpan(
                  text: '. Tap "Agree and continue" to accept the ',
                ),
                TextSpan(
                  text: ' Terms of Service.',
                  style: TextStyle(
                    color: Coloors.greenDark,
                  ),
                ),
              ])),
    );
  }
}
