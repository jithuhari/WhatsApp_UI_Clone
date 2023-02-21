import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List imagesDp = [
      'assets/profileDp/1.jpg',
      'assets/profileDp/2.jfif',
      'assets/profileDp/3.jfif',
      'assets/profileDp/4.jpg',
      'assets/profileDp/5.jpg',
      'assets/profileDp/1.jpg',
      'assets/profileDp/2.jfif',
      'assets/profileDp/3.jfif',
      'assets/profileDp/4.jpg',
      'assets/profileDp/5.jpg',
      'assets/profileDp/1.jpg',
      'assets/profileDp/2.jfif',
    ];

    List names = [
      'Sonu',
      'Rahul',
      'Roy',
      'Amal',
      'John',
      'Fahad',
      'Ram',
      'Akhil',
      'Vishnu',
      'Asif',
      'Jiju',
      'Faseeh',
    ];

    return Scaffold(
        body: ListView.builder(
            itemCount: imagesDp.length,
            itemBuilder: ((context, index) => Padding(
               padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(imagesDp[index]),
                    ),
                    title: Text(names[index]),
                    subtitle: const Text(
                        'Tempor aliquip occaecat consequat cillum duis est.'),
                  ),
            ))));
  }
}
