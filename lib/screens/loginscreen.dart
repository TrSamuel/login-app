import 'package:flutter/material.dart';
import 'package:loginapp/constants/colorconst.dart';
import 'package:loginapp/function/login.dart';
import 'package:loginapp/widgets/login/inpdec.dart';

class Loginscreen extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  Loginscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login page"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: inptFieldDecor(fieldTxt: 'Username'),
            ),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: inptFieldDecor(fieldTxt: 'Password'),
            ),
            const SizedBox(
              height: 45,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 50),
                textStyle: const TextStyle(fontSize: 24),
                backgroundColor: primaryColor,
                foregroundColor: secondaryColor,
              ),
              onPressed: () {
                final result = login(
                  username: usernameController.text,
                  password: passwordController.text,
                );
                if (result == true) {
                  showSnackBar(
                    context: context,
                    text: 'Login success',
                    bgColor: const Color.fromARGB(255, 19, 90, 149),
                  );
                  Navigator.pushReplacementNamed(context, "home-screen");
                } else {
                  showSnackBar(
                    context: context,
                    text: 'Incorrect username or password',
                    bgColor: const Color.fromARGB(255, 149, 19, 19),
                  );
                }
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

showSnackBar(
    {required BuildContext context,
    required String text,
    required Color bgColor}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
      backgroundColor: bgColor,
    ),
  );
}
