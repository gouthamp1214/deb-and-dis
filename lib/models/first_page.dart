import 'package:debanddis/models/chat_page.dart';
import 'package:debanddis/models/plus_one_page.dart';
import 'package:debanddis/models/profile_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required String title});

  @override
  State<FirstPage> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ChatPage(),
    const PlusOnePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debate and Discuss'),
        backgroundColor: Colors.green[300],
        actions: [
          // Widgets to place in the app bar's action area
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Perform a search action
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Debate",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one_outlined),
            label: "Plus One",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
