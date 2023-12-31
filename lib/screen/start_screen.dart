import 'package:flutter/material.dart';
import 'package:travel_app_project/screen/home_screen.dart';
import 'package:travel_app_project/screen/reset_password_screen.dart';
import 'package:travel_app_project/screen/sign_in_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white, //set screen background color to white
          child: Center(
            child: Column(
              //set all of widget to column
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(padding: EdgeInsets.only(top: 50)),
                const SizedBox(
                  //add space between widget
                  height: 5,
                ),
                Image.asset(
                  //add image
                  'assets/images/logo.jpg',
                  width: 320,
                ),
                const SizedBox(
                  //add space between widget
                  height: 5,
                ),
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [Colors.red, Colors.blue, Colors.red],
                    ).createShader(bounds);
                  },
                  child: const Text(
                    'Welcome to App Name',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  //create button log in with Google
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    maximumSize: const Size(320, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(7.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google-icon.png',
                        width: 22,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Continue with Google',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const Text(
                  // add text 'or'
                  'or',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  //add space between widget
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      //make container to input email
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      width: 320,
                      height: 45,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'email',
                          contentPadding: EdgeInsets.only(top: 11, left: 13),
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.check),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  //add space between container
                  height: 12,
                ),
                Container(
                  //make container to input email
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  width: 320,
                  height: 45,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'password',
                      contentPadding: EdgeInsets.only(top: 11, left: 13),
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                const SizedBox(
                  //add space between widget
                  height: 17,
                ),
                ElevatedButton(
                  //create Log in button
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    minimumSize: const Size(320, 45),
                  ),
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  //add space between widget
                  height: 10,
                ),
                TextButton(
                  //create text button for 'Reset Password'
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPasswordScreen()),
                    );
                  },
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  child: const Text('Reset Password'),
                ),
                Row(
                  //add row for create sign in text button with text 'no account'
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'No account?',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInScreen()),
                        );
                      },
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      child: const Text('Sign in'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
