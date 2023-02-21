import 'package:flutter/material.dart';
import 'package:whatsapp_ui/const/colors.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const ListTile(
          leading:
              CircleAvatar(backgroundColor: mainColor, child: Icon(Icons.link)),
          title: Text('Create Call Link'),
          subtitle: Text('Share a link for your whatsApp calls'),
        ),
        Row(
          children: const [
            SizedBox(
              width: 20,
            ),
            Text(
              'Recent',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/profileDp/5.jpg'),
          ),
          title: Text('Arun'),
          subtitle: Text('20/02/2023'),
          trailing: Icon(
            Icons.call,
            color: mainColor,
          ),
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/profileDp/1.jpg'),
          ),
          title: Text('Rajeev'),
          subtitle: Text('10/02/2023'),
          trailing: Icon(
            Icons.video_call,
            color: mainColor,
          ),
        )
      ]),
    );
  }
}
