import 'package:flutter/material.dart';
import 'package:travel_app_project/screen/sign_in_complete.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF52057B),
                    Color(0xFF8235B0),
                    Color(0xFFB76E91),
                    Color(0xFFF1AC6F),
                  ],
                ),
              ),
            ),
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 400,
                  height: 575,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        // Create Sign in button
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInComplete(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(82, 5, 123, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          minimumSize: const Size(320, 45),
                        ),
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
