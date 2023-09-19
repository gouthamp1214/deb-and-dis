import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat Page',
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            color: Colors.lightBlue,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              color: Colors.red,
            ),
            Container(
              height: 500,
              color: Colors.blue,
            ),
            Container(
              height: 500,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
