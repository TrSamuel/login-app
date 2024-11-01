import 'package:flutter/material.dart';
import 'package:loginapp/constants/colorconst.dart';
import 'package:loginapp/function/login.dart';
import 'package:loginapp/widgets/common/show_snack_bar.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.formKey,
  });

  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width, 50),
        textStyle: const TextStyle(fontSize: 24),
        backgroundColor: primaryColor,
        foregroundColor: secondaryColor,
      ),
      onPressed: () {
        if (formKey.currentState!.validate()) {
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
        }
      },
      child: const Text("Login"),
    );
  }
}
