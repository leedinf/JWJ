import 'package:flutter/material.dart';
import 'package:flutter_test_1/chat_page.dart';
import 'package:flutter_test_1/friends/friends_body.dart';
class Freinds extends StatefulWidget {
  const Freinds({super.key});

  @override
  State<Freinds> createState() => _FreindsState();
}

class _FreindsState extends State<Freinds> {
  int _currentIdx =0;
  int selectedIdx=0;
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
      body: Center(child: IndexedStack(index : selectedIdx,
      children: [
        FriendsBody(),
        ChatPage1(),
      ],),),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIdx,
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
        onTap: (index){
          setState(() {
            _currentIdx = index;
            selectedIdx = index;
          });
        },
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



