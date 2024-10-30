import 'package:flutter/material.dart';
import 'package:loginapp/constants/colorconst.dart';
import 'package:loginapp/widgets/home/fruit_list.dart';
import 'package:loginapp/widgets/home/logout_btn.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: primaryColor,
          foregroundColor: secondaryColor,
          titleTextStyle: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: secondaryColor,
          ),
          actions: const [
            LogoutBtn(),
          ],
        ),
        body: FruitList(size: size));
  }
}
