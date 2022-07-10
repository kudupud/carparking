import 'package:car_parking/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'user_screen.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('DETAILS SCREEN'),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/scorpio.jpg',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Text(
                'car number',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/face.jpg'),
              ),
              title: Text('CAR OWNER NAME'),
              subtitle: Text('city'),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(10),
              child: IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.message),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ChatScreen())));
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
