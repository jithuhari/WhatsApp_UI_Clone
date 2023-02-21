import 'package:flutter/material.dart';
import 'package:whatsapp_ui/const/colors.dart';

class StatusAddWidget extends StatelessWidget {
  const StatusAddWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/profileDp/4.jpg'),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: mainColor,
              child: Center(child: Icon(Icons.add,color: Colors.white,size: 15,))),
          )
        ],
      ),
      title: const Text('My Status'),
      subtitle: const Text('Tap to add status update'),
    );
  }
}
