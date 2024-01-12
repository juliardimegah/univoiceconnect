// ignore_for_file: prefer_const_constructors, unused_import, use_key_in_widget_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import 'package:univoiceconnect/features/app/splash_screen/splash_screen.dart';
import 'package:univoiceconnect/features/user_auth/presentation/pages/home_page.dart';
import 'package:univoiceconnect/features/user_auth/presentation/pages/login_page.dart';
import 'package:univoiceconnect/features/user_auth/presentation/pages/sign_up_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAX4YI49B13DAntBzilpg-ly-G9eCm4hOY",
            appId: "1:180541816078:web:c43cb95f4747e68fc7ab5f",
            messagingSenderId: "180541816078",
            projectId: "hackfest23-6f216"
        )
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: LoginPage(),
        ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}