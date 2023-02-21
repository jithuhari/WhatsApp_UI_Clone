import 'package:flutter/material.dart';
import 'package:whatsapp_ui/features/home_screen/home_screen.dart';
import 'package:camera/camera.dart';
Future<void> main() async{
    WidgetsFlutterBinding.ensureInitialized();

  // Initialize cameras
  List<CameraDescription> cameras = await availableCameras();
  runApp(MyApp(cameras: cameras));
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MyApp({Key? key, required this.cameras}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home:HomePageScreen(cameras: cameras),
    );
  }
}
