import 'package:flutter/material.dart';

class TextAppBar extends StatelessWidget {
  const TextAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "واتساب",
      style: TextStyle(
        color: Color(0xfffcffff),
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
