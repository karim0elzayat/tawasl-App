import 'dart:io';
import 'package:flutter/material.dart';
import 'screens/Welcome_screen.dart';
import 'package:tawasl/screens/registration_screen.dart';
import 'package:tawasl/screens/signin_screen.dart';
import 'package:tawasl/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

final _auth = FirebaseAuth.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
            apiKey: "AIzaSyDmLkalzMoaNdOXOCYeF2He2oal6FikCVQ",
            appId: "1:57798424844:android:21d93b6ba4d9dd58e37129",
            messagingSenderId: "57798424844",
            projectId: "tawasl-app-55ca7",
          ),
        )
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tawasl',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: Welcome_screen(),
      initialRoute: /* _auth.currentUser != null
          ? ChatScreen.ScreenRoute
          : Welcome_screen.ScreenRoute,*/
          Welcome_screen.ScreenRoute,
      routes: {
        Welcome_screen.ScreenRoute: (context) => Welcome_screen(),
        Signinscreen.ScreenRoute: (context) => Signinscreen(),
        RegistrationScreen.ScreenRoute: (context) => RegistrationScreen(),
        ChatScreen.ScreenRoute: (context) => ChatScreen(),
      },
    );
  }
}
