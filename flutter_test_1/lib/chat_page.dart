import 'package:flutter/material.dart';
import 'package:flutter_test_1/chat_box.dart';


class ChatPage extends StatefulWidget {
  @override
  _ChatPage createState() => _ChatPage();
}
class _ChatPage extends State<ChatPage> {
  List<ChatBox> chatMessages = [];

  void _addChatMessage() {
    setState(() {
      chatMessages.add(
        ChatBox(
          name: '김명준',
          text: '아 그만두고싶다',
          imageUrl: '',
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: chatMessages.length,
              itemBuilder: (context, index) {
                final message = chatMessages[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(message.imageUrl),
                  ),
                  title: Text(message.name),
                  subtitle: Text(message.text),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: _addChatMessage,
            child: Text('Add Chat Message'),
          ),
        ],
      ),
    );
  }
}