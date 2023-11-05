import 'package:flutter/material.dart';
import 'package:flutter_test_1/chat_box.dart';

class ChatPage1 extends StatelessWidget {
  const ChatPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("채팅"),
        actions: [
          ElevatedButton.icon(onPressed: () {
            //Navigator
          },
              style: ButtonStyle(),
              icon: Icon(Icons.search,color: Colors.black),
              label: Text('')
          ),
          ElevatedButton.icon(onPressed: () {

          },
              icon: Icon(Icons.add_comment_outlined),
              label: Text('')
          ),
          ElevatedButton.icon(onPressed: () {

          },
              icon: Icon(Icons.settings),
              label: Text('')
          )
        ],
      ),
      body: Column(
        children:[
          ChatBox()
        ]
      ),
    );
  }

}
