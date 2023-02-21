import 'package:flutter/material.dart';
import 'package:whatsapp_ui/const/colors.dart';
import 'package:whatsapp_ui/features/calls_screen/calls_screen.dart';
import 'package:whatsapp_ui/features/home_screen/widgets/chatList.dart';
import 'package:whatsapp_ui/features/status_screen/status_screen.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: const Text('WhatsApp'),
          actions: const [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert)
          ],
          bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: selectionColor,
              tabs: [
                Icon(Icons.people),
                Text('Chats'),
                Text('Status'),
                Text('Calls')
              ]),
        ),
        body: const TabBarView(
            children: [ChatList(), ChatList(), StatusScreen(), CallsScreen()]),
      ),
    );
  }
}
