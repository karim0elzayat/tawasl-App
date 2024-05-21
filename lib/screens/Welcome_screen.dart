import 'package:flutter/material.dart';
import 'package:tawasl/screens/registration_screen.dart';
import 'package:tawasl/screens/signin_screen.dart';
import 'package:tawasl/widgets/button.dart';

class Welcome_screen extends StatefulWidget {
  static const String ScreenRoute = 'Welcome_screen';

  const Welcome_screen({super.key});

  @override
  State<Welcome_screen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('images/logo.png'),
                ),
                Text(
                  'Tawasl',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Button(
              color: Color.fromARGB(255, 173, 43, 216)!,
              title: 'Sign in',
              onPressed: () {
                Navigator.pushNamed(context, Signinscreen.ScreenRoute);
              },
            ),
            Button(
              color: Color.fromARGB(255, 232, 89, 228)!,
              title: 'register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.ScreenRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
