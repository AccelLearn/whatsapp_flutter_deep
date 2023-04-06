import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold 是 Material library 中提供的 widget，
    // 它提供了默认的导航栏、标题和包含主屏幕 widget 树的 body 属性
    return Scaffold(
      backgroundColor: const Color(0xFF111B21),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 36.0),
                child: Image.asset(
                  'assets/images/circle.png', 
                  color: const Color(0xFF00a884)
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 36.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: 'Read our',
                        style: TextStyle(
                          color: Color(0xFF8696a0),
                          height: 1.5
                        ),
                        children: [
                          TextSpan(
                            text: ' Privacy Policy',
                            style: TextStyle(
                              color: Color(0xFF00a884),
                            ),
                          ),
                          TextSpan(
                            text: '. Tap "Agree and continue" to accept the ',
                          ),
                          TextSpan(
                            text: ' Terms of Service.',
                            style: TextStyle(
                              color: Color(0xFF00a884),
                            ),
                          ),
                        ]
                      )
                    ),
                  ),
                  SizedBox(
                    height: 42,
                    width: MediaQuery.of(context).size.width - 100,
                    child: ElevatedButton(
                      onPressed: () {}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00a884),
                        foregroundColor: const Color(0xFF111B21),
                        splashFactory: NoSplash.splashFactory,
                        elevation: 0.0,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                        ),
                      ),
                      child: Text('Agree and continue'.toUpperCase()), 
                    ),
                  ),
                  const SizedBox(height: 50),
                  Material(
                    color: const Color(0xFF182229),
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      onTap: () {},
                      splashFactory: NoSplash.splashFactory,
                      borderRadius: BorderRadius.circular(20),
                      highlightColor: const Color(0xFF00a884),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.language, 
                            color: Color(0xFF00a884)
                          ),
                          SizedBox(width: 6),
                          Text(
                            'English',
                            style: TextStyle(
                              color: Color(0xFF8696a0)
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xFF00a884)
                          )
                        ]
                      ),
                    ),
                  )
                ],
              )
            )
          ],
        )
      ),
    );
  }
}
