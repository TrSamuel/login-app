import 'package:flutter/material.dart';
import 'package:loginapp/constants/colorconst.dart';
import 'package:loginapp/widgets/login/inpdec.dart';
import 'package:loginapp/widgets/login/login_btn.dart';

class Loginscreen extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  Loginscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 28,
          fontFamily: 'app-title-font',
        ),
        title: const Text("My App"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              style: const TextStyle(
                fontFamily: 'second-super-font',
                fontSize: 24,
              ),
              controller: usernameController,
              decoration: inptFieldDecor(fieldTxt: 'Username'),
            ),
            SizedBox(
              height: size * 0.03,
            ),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: inptFieldDecor(fieldTxt: 'Password'),
            ),
            SizedBox(
              height: size * 0.04,
            ),
            LoginBtn(
                usernameController: usernameController,
                passwordController: passwordController),
          ],
        ),
      ),
    );
  }
}
