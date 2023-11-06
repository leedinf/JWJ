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
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search,color: Colors.white),
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.add_comment,color: Colors.white),
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.settings,color: Colors.white),
          )
        ],
      ),
      body: ListView(
        children:[
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
          ChatBox(),
        ]
      ),
    );
  }

}
