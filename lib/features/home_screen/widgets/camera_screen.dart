
// Camera Screen
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class TakePictureScreen extends StatefulWidget {
  final CameraController controller;

  const TakePictureScreen({Key? key, required this.controller})
      : super(key: key);

  @override
  _TakePictureScreenState createState() => _TakePictureScreenState();
}

class _TakePictureScreenState extends State<TakePictureScreen> {
  @override
  void dispose() {
    // widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // FutureBuilder<void>(
        //   future: widget.controller.initialize(),
        //   builder: (context, snapshot) {
        //     if (snapshot.connectionState == ConnectionState.done) {
             // return 
             CameraPreview(widget.controller),
        //     } else {
        //       return const Center(child: CircularProgressIndicator());
        //     }
        //   },
        // ),
        
        const SizedBox(height: 25,),
        FloatingActionButton(
          child: const Icon(Icons.camera_alt),
          onPressed: () async {
            try {
              await widget.controller.takePicture();
              Navigator.pop(context);
            } catch (e) {
              debugPrint('error');
            }
          },
        ),
      ],
    );
  }
}
