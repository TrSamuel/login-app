import 'package:flutter/material.dart';

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
