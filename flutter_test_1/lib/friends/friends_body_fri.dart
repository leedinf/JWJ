import 'package:flutter/material.dart';

class FriendsBodyFri extends StatelessWidget {
  const FriendsBodyFri({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
        Container(
          height: 2,
          color: const Color.fromARGB(255, 39, 39, 39),
        ),
        _buildfriendprofile(),
      ],
    );
  }

  Widget _buildfriendprofile() {
    return Stack(
      children: [
        Container(
          height: 60,
          width: double.infinity,
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/profile.png"),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "누굴까",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
