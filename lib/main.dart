import 'package:flutter/material.dart';
import 'package:travel_app_project/screen/reset_password_screen.dart';
import 'package:travel_app_project/screen/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define your app's initial route here
      initialRoute: '/',
      routes: {
        '/': (context) => const StartScreen(),
        '/reset_password': (context) => const ResetPasswordScreen(),
        // Add more routes as needed for your app
      },
    );
  }
}
