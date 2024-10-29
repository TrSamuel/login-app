import 'package:flutter/material.dart';
import 'package:loginapp/screens/homescreen.dart';
import 'package:loginapp/screens/loginscreen.dart';
void main(List<String> args) {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'login-screen': (context) => Loginscreen(),
        'home-screen': (context) => const Homescreen(),
      },
      initialRoute: 'login-screen',
    );
  }
}
