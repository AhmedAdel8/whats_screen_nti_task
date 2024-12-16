import 'package:flutter/material.dart';
import 'package:nti_flutter/models/message.dart';
import 'package:nti_flutter/widgets/bottomnavigationbar.dart';
import 'package:nti_flutter/widgets/popupMenuButton.dart';
import 'package:nti_flutter/widgets/text_app_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  Message message = Message();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xff0b1014),
        appBar: AppBar(
          backgroundColor: const Color(0xff0b1014),
          title: const TextAppBar(),
          actions: const [
            Icon(
              size: 25,
              Icons.camera_alt_outlined,
            ),
            SizedBox(width: 20),
            Icon(
              size: 25,
              Icons.search,
            ),
            Popupmenubutton(),
          ],
        ),
        body: ListView.builder(
          padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
          itemCount: message.messages.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 28.0,
                backgroundImage: AssetImage(
                  message.messages[index]["image"],
                ),
              ),
              title: Text(
                message.messages[index]["name"],
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xffeaeef1),
                ),
              ),
              subtitle: Text(
                message.messages[index]["message"],
                style: const TextStyle(
                  color: Color(0xff8a8f93),
                  fontSize: 16,
                ),
              ),
              trailing: Text(
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xff8a8f93),
                ),
                message.messages[index]["time"],
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBarWidget(),
      ),
    );
  }
}
