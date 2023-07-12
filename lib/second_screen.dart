import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/home_controller.dart';
import 'package:get_x/view/screen/home_screen.dart';

class SecondScreen extends StatelessWidget {
   const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Second Screen'.tr),
        // backgroundColor: Colors.cyan,
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              child: const Text('Go to Display Screen'),

              onPressed: () {
                // Get.offAll( const HomeScreen());
                Get.offAllNamed('/displayNamePage');
              },
            ),
          )
        ],
      ),
    );
  }
}
