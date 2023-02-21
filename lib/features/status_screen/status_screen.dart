import 'package:flutter/material.dart';
import 'package:whatsapp_ui/const/colors.dart';

import 'widgets/add_status_widget.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          const StatusAddWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
             Icon(Icons.lock,size: 15,),
             Text('Your status updates are '),
             Text('end-to-end encryption',style: TextStyle(color: mainColor),)
            ],
          )
        ],
      ),
    );
  }
}

