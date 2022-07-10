import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:car_parking/screenss/sign_in_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyCniXi9CqqORNbXFqSYQ7cACrKcq2gXdY8",
    authDomain: "carparking-77870.firebaseapp.com",
    appId: "1:559745161019:web:ddf978ff5dc2b616db091e",
    storageBucket: "carparking-77870.appspot.com",
    messagingSenderId: "559745161019",
    projectId: "carparking-77870",
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterFire Samples',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: SignInScreen(),
    );
  }
}
