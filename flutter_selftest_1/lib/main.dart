import 'package:flutter/material.dart';
import 'package:flutter_selftest_1/screen/screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Quiz App',
      home: HomeScreen(),
    );
  }
}
