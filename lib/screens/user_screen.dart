import 'dart:html';

import 'package:car_parking/screens/scan_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import './log_in_control.dart';

class UserScreen extends StatefulWidget {
  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  //final controller = Get.put(LoginController);
  var _isLogin = false;

  final _formkey = GlobalKey<FormState>();

  String _userEmail = '';
  String username = '';
  String _userpassword = '';

  void _Submit() {
    final isValid = _formkey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formkey.currentState!.save();
      print(_userEmail);
      print(username);
      print(_userpassword);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/scorpio.jpg'),
                fit: BoxFit.cover)),
        child: Column(children: [
          Expanded(
            child: Center(
                child: Card(
              margin: EdgeInsets.all(20),
              child: SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.all(16),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        key: ValueKey('email'),
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !value.contains('@')) {
                            return 'please enter a valid email';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(labelText: 'EMAIL ADDRESS'),
                        onSaved: (value) {
                          _userEmail = value.toString();
                        },
                      ),
                      // if (!_isLogin)
                      // TextFormField(
                      //  key: ValueKey('username'),
                      // validator: (value) {
                      // if (value == null ||
                      //   value.isEmpty ||
                      //   value.length < 5) {
                      // return 'please enter atleast 5 characters!';
                      // } else {
                      //   return null;
                      // }
                      // },
                      // decoration: InputDecoration(labelText: 'USER NAME'),
                      // onSaved: (value) {
                      // username = value.toString();
                      // },
                      // ),
                      TextFormField(
                        key: ValueKey('password'),
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 7) {
                            return 'please enter atleast 7 characters!';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(labelText: 'PASSWORD'),
                        onSaved: (value) {
                          _userpassword = value.toString();
                        },
                        obscureText: true,
                      ),
                      SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: _Submit,
                        // () {
                        //Navigator.push(
                        //   context,
                        // MaterialPageRoute(
                        // builder: ((context) => ScanScreen())));
                        //  },
                        child: Text(_isLogin ? 'Login' : 'Signup'),
                      ),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            _isLogin = !_isLogin;
                          });
                        },
                        child: Text(_isLogin
                            ? 'Create new account'
                            : 'I already have an account'),
                      ),
                      Text('OR'),
                      FloatingActionButton.extended(
                        onPressed: () {},
                        label: Text('Sign in with Google'),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              )),
            )),
          ),
        ]),
      ),
    );
  }
}
