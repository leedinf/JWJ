import 'package:flutter/material.dart';
import 'package:flutter_test_1/friends/friends.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
      )),
      debugShowCheckedModeBanner: false,
      home: Friends(),
    );
  }
}

class MyWidgt extends StatelessWidget {
  const MyWidgt({super.key});

  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('title')),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
