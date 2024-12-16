import 'package:flutter/material.dart';

class Popupmenubutton extends StatelessWidget {
  const Popupmenubutton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            child: Text(" item 1"),
          ),
          const PopupMenuItem(
            child: Text(" item 2"),
          ),
          const PopupMenuItem(
            child: Text(" item 3"),
          ),
        ];
      },
    );
  }
}
