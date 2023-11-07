import 'package:flutter/material.dart';
import 'package:flutter_test_1/chat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatPage1(),
    );
  }
}
