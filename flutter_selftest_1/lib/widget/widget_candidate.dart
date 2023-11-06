// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CandWidget extends StatefulWidget {
  VoidCallback tap;
  String text;
  int index;
  double width;
  bool answerState;
  CandWidget({
    Key? key,
    required this.tap,
    required this.text,
    required this.index,
    required this.width,
    required this.answerState,
  }) : super(key: key);

  @override
  State<CandWidget> createState() => _CandWidgetState();
}

class _CandWidgetState extends State<CandWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.8,
      height: widget.width * 0.1,
      padding: EdgeInsets.fromLTRB(widget.width * 0.048, widget.width * 0.024,
          widget.width * 0.048, widget.width * 0.024),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.deepOrange),
        color: widget.answerState ? Colors.deepPurple : Colors.white,
      ),
      child: InkWell(
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: widget.width * 0.035,
            color: widget.answerState ? Colors.white : Colors.black,
          ),
        ),
        onTap: () {
          setState(() {
            widget.tap();
            widget.answerState = !widget.answerState;
          });
        },
      ),
    );
  }
}
