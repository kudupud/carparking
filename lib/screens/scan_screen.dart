import 'package:car_parking/screens/details_screen.dart';
import 'package:car_parking/screens/log_in_control.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScanScreen extends StatelessWidget {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('CAR PARKING'),
          ),
          actions: [
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('Edit profile'),
                ),
                PopupMenuItem(
                  child: Text('recent chat'),
                ),
                PopupMenuItem(
                  child: Text('logout'),
                ),
              ];
            })
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(child: Obx(() {
              if (controller.googleAccount.value == null)
                return bulidlogin();
              else
                return bulidprofile();
            })),
            SizedBox(
              height: 50,
              width: 150,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => DetailScreen())));
                },
                color: Colors.blue,
                child: Text('SCAN THE BOARD'),
              ),
            )
          ],
        ));
  }

  Column bulidprofile() {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage:
              Image.network(controller.googleAccount.value?.photoUrl ?? '')
                  .image,
          radius: 50,
        ),
        Text(
          controller.googleAccount.value?.displayName ?? '',
          style: Get.textTheme.headline3,
        ),
        Text(
          controller.googleAccount.value?.email ?? '',
          style: Get.textTheme.headline1,
        ),
        ActionChip(
          label: Text('logout'),
          onPressed: () {
            controller.logout();
          },
          avatar: Icon(Icons.logout),
        )
      ],
    );
  }

  FloatingActionButton bulidlogin() {
    return FloatingActionButton.extended(
      onPressed: () {
        controller.login();
      },
      label: Text('Sign in with Google'),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }
}
