import 'package:flutter/material.dart';
import 'package:flutter_selftest_1/model/model_quiz.dart';
import 'package:flutter_selftest_1/screen/screen_quiz.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Quiz> quizs = [
    Quiz.fromMap({
      'title': 'test',
      'candidates': ['a', 'b', 'c', 'd'],
      'ansewer': 0
    }),
    Quiz.fromMap({
      'title': 'test',
      'candidates': ['a', 'b', 'c', 'd'],
      'ansewer': 0
    }),
    Quiz.fromMap({
      'title': 'test',
      'candidates': ['a', 'b', 'c', 'd'],
      'ansewer': 0
    }),
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('My Quiz App'),
        backgroundColor: Colors.deepPurple,
        leading: Container(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/quiz.png',
              width: width * 0.8,
            ),
          ),
          Padding(padding: EdgeInsets.all(width * 0.024)),
          Text(
            "Flutter Quiz App",
            style:
                TextStyle(fontSize: width * 0.065, fontWeight: FontWeight.bold),
          ),
          const Text(
            "퀴즈 풀기 전 안내사항\n어쩌구저쩌구메롱",
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.all(width * 0.048)),
          _buildStep(width, "1. 퀴즈를 푸세요"),
          _buildStep(width, "2. 틀리지 마세요"),
          _buildStep(width, "3. 이 규칙들을 지키세요"),
          Padding(padding: EdgeInsets.all(width * 0.048)),
          Container(
            padding: EdgeInsets.only(bottom: width * 0.036),
            child: Center(
              child: ButtonTheme(
                  minWidth: width * 0.8,
                  height: height * 0.05,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.deepPurple),
                    ),
                    child: const Text(
                      "지금 퀴즈 풀기",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizScreen(
                            quizs: quizs,
                          ),
                        ),
                      );
                    },
                  )),
            ),
          )
        ],
      ),
    ));
  }

  Widget _buildStep(double width, String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        width * 0.048,
        width * 0.024,
        width * 0.048,
        width * 0.024,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.check_box,
            size: width * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.024),
          ),
          Text(title),
        ],
      ),
    );
  }
}
