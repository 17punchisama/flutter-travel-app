import 'package:flutter/material.dart';
import 'package:travel_app_project/screen/home_screen.dart';

class SignInComplete extends StatelessWidget {
  const SignInComplete({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Expanded(
              // Use Expanded to make the Container fill available space
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xFF52057B),
                      Color(0xFF8235B0),
                      Color(0xFFB76E91),
                      Color(0xFFF1AC6F),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 330,
                height: 530,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/verified.png',
                      width: 216,
                    ),
                    const Text(
                      'Sign In\nComplete',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Welcome ชื่อยูสเซอร์\nTo ชื่อแอพ',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      icon: const Icon(
                        Icons.home,
                        color: Color(0xFFFF861B),
                        size: 27,
                      ),
                      label: const Text(
                        'Back to home',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFF861B),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
