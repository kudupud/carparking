import 'package:car_parking/screens/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        // showDoneButton: true,
        showNextButton: false,
        // showSkipButton: false,
        // showBackButton: false,
        pages: [
          PageViewModel(
              title: 'USER REGISTRETION',
              body: 'user registrer with email.id,usernumber,password ',
              image: Center(
                child: Image.asset('assets/images/face.jpg'),
              )),
          PageViewModel(
              title: 'SCAN THE NUMBER BOARD',
              body: 'Scan the number board with the help of camera ',
              image: Center(
                child: Image.asset('assets/images/scorpio.jpg'),
              )),
          PageViewModel(
              title: ' CAR OWNER DETAILS',
              body: 'Hear view the car owner details and chat option',
              image: Center(
                child: Image.asset('assets/images/scorpio.jpg'),
              )),
          PageViewModel(
              title: 'CHAT SCREEN',
              body: 'Chat with car owner ',
              image: Center(
                child: Image.asset('assets/images/face.jpg'),
              )),
        ],
        done: Text(
          'OK',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onDone: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => UserScreen())));
        },
      ),
    );
  }
}
