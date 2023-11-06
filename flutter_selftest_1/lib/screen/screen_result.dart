// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_selftest_1/model/model_quiz.dart';

class ResultScreen extends StatelessWidget {
  List<int> answers;
  List<Quiz> quizs;

  ResultScreen({super.key, 
    required this.answers,
    required this.quizs,
  })

  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;
    double width = ScreenSize.width;
    double height = ScreenSize.height;
    int score = 0;
    for (int i = 0; i < 4; i++) {
      if (quizs[i].answer == answers[i]) {
        score++;
      }
    }
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("My Quiz APP"),
        backgroundColor: Colors.deepPurple,
        leading: Container(),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.deepOrange),
            color: Colors.deepPurple,
          ),
          width: width * 0.85,
          height: height * 0.7,
          child: const Column(
            children: [],
          ),
        ),
      ),
    ));
  }
}
