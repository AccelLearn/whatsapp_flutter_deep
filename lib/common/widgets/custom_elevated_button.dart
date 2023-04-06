import 'package:flutter/material.dart';
import 'package:flutter_deep/common/utils/coloors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.buttonWidth,
    required this.onPressed,
    required this.text,
    this.buttonHeight,
  });

  final double? buttonWidth;
  final double? buttonHeight;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? MediaQuery.of(context).size.width - 100,
      height: buttonHeight ?? 42,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Coloors.greenDark,
          foregroundColor: Coloors.backgroundDark,
          splashFactory: NoSplash.splashFactory,
          elevation: 0.0,
          shadowColor: Colors.transparent,
        ),
        child: Text(text.toUpperCase()),
      ),
    );
  }
}
