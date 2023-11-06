import 'package:flutter/material.dart';
//mport 'package:flutter_test_1/friends/friends_body_birthday.dart';
import 'package:flutter_test_1/friends/friends_body_fri.dart';
import 'package:flutter_test_1/friends/friends_body_mypro.dart';
//import 'package:flutter_test_1/friends/friends_body_update.dart';

class FriendsBody extends StatelessWidget {
  const FriendsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FriendsBodyMypro(),
        // FriendsBodyUpdate(),
        // FriendsBodyBirthday(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        Container(
          width: double.infinity,
          height: 18,
          decoration: BoxDecoration(color: Colors.black),
          child: Text(
            "     친구",
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        ),
        FriendsBodyFri(),
      ],
    );
  }
}
