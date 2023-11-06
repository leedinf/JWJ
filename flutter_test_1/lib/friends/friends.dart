import 'package:flutter/material.dart';
import 'package:flutter_test_1/friends/friends_body.dart';

class Friends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("친구"),
        actions: [
          _buildIcon(Icons.search),
          _buildIcon(Icons.person_add),
          _buildIcon(Icons.music_note),
          _buildIcon(Icons.settings),
        ],
      ),
      body: FriendsBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: "",
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData iconData) {
    return IconButton(
      icon: Icon(iconData),
      onPressed: () {},
    );
  }
}
