import 'package:flutter/material.dart';

// Screens
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login to the app",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  } // Widget build
} // class App
