import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            child: Text("사진"),
          ),
          Column(
            children: [
              Text('Username'),
              Text('Lastchat')
            ]
          )
        ],
      ),
    );
  }
}
