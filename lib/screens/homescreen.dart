import 'package:flutter/material.dart';
import 'package:loginapp/constants/colorconst.dart';
import 'package:loginapp/data/fruitslist.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: primaryColor,
          foregroundColor: secondaryColor,
          titleTextStyle:
              const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          actions: [
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: secondaryColor,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "login-screen");
              },
              label: const Text("Logout"),
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: ListView.separated(
          itemCount: fruitList.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(fruitList[index]),
          ),
          separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
