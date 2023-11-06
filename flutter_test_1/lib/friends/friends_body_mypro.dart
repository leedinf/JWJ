import 'package:flutter/material.dart';

class FriendsBodyMypro extends StatelessWidget {
  const FriendsBodyMypro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              print("프로필 사진 누른거");
            },
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.png"),
              radius: 30,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "전우조",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 4,
          ),
          InkWell(
              onTap: () {
                print("프로필 오른쪽에 그거 누름");
              },
              child: Icon(Icons.navigate_next_rounded, color: Colors.white)),
          Spacer(),
          InkWell(
            onTap: () {
              print("상태메시지 클릭");
            },
            child: Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "상태메세지 +",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
