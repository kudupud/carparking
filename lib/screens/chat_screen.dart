import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Chat screen'),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.all(10.0),
        child: Row(children: [
          Expanded(
              child: TextField(
            decoration: InputDecoration(labelText: 'message the car owner..'),
          )),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send),
          )
        ]),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
