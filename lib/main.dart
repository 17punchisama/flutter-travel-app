import 'package:flutter/material.dart';
import 'package:travel_app_project/screen/start_screen.dart';

void main() {
  runApp(const StartScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: StartScreen(),
      );
}
