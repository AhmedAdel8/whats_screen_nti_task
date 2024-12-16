import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedLabelStyle: const TextStyle(
        color: Colors.white,
      ),
      iconSize: 25,
      backgroundColor: const Color(0xff0b1014),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
            color: Color(0xfffcffff),
          ),
          label: "الدردشات",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.storefront_outlined,
            color: Color(0xfffcffff),
          ),
          label: "المستجدات",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.phone,
            color: Color(0xfffcffff),
          ),
          label: "المجتمعات",
        ),
      ],
    );
  }
}
