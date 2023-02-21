import 'package:flutter/material.dart';
import 'package:whatsapp_ui/const/colors.dart';
import 'package:whatsapp_ui/features/calls_screen/calls_screen.dart';
import 'package:whatsapp_ui/features/home_screen/widgets/chatList.dart';
import 'package:whatsapp_ui/features/status_screen/status_screen.dart';
import 'package:camera/camera.dart';

import 'widgets/camera_screen.dart';

class HomePageScreen extends StatefulWidget {
  final List<CameraDescription> cameras;
  const HomePageScreen({Key? key, required this.cameras}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();

    // Initialize camera controller
    _controller = CameraController(
      widget.cameras[0],
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _openCamera() async {
    await _initializeControllerFuture;
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TakePictureScreen(controller: _controller),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: const Text('WhatsApp'),
          actions: [
            GestureDetector(
                onTap: (() => _openCamera()),
                child: const Icon(Icons.camera_alt_outlined)),
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.more_vert)
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
