import 'package:flutter/material.dart';
import 'package:flutter_test_1/chat_box.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("세팅"),
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(ctx);
          }, icon: Icon(Icons.turn_left))
        ],
    ),
      body: Center(
        child: ListView(
          children: [
            Container(
              child: Text("dd")
            )
        ],
    ),
      ),
    );
  }
}
