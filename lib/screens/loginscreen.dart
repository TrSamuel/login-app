import 'package:flutter/material.dart';
import 'package:loginapp/constants/colorconst.dart';
import 'package:loginapp/widgets/login/inpdec.dart';
import 'package:loginapp/widgets/login/login_btn.dart';

class Loginscreen extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final _formkEy = GlobalKey<FormState>();
  Loginscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: secondaryColor,
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
        child: Form(
          key: _formkEy,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                style: const TextStyle(
                  fontFamily: 'second-super-font',
                  fontSize: 24,
                ),
                controller: usernameController,
                decoration: inptFieldDecor(fieldTxt: 'Username'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Username";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: size * 0.03,
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: inptFieldDecor(fieldTxt: 'Password'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Password";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: size * 0.04,
              ),
              LoginBtn(
                usernameController: usernameController,
                passwordController: passwordController,
                formKey: _formkEy,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
