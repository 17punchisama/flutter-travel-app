import 'package:flutter/material.dart';
import 'package:travel_app_project/screen/sign_in_complete.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( //rgba(238, 238, 238, 1)
        child: ElevatedButton(
          //create Sing in button
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignInComplete()),
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
            'Sing in',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
