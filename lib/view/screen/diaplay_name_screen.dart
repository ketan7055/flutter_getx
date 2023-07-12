import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/home_controller.dart';
import 'package:get_x/view/screen/home_screen.dart';

class DisplayNameScreen extends StatelessWidget {
   DisplayNameScreen({Key? key}) : super(key: key);
  HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Display Name'.tr),
        // backgroundColor: Colors.cyan,
      ),



      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            child:
            ElevatedButton(
              child: const Text('Display Name'),
              onPressed: () {
                controller.displayName();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            child:
            ElevatedButton(
              child: const Text(' Get Display Name'),

              onPressed: () {
                controller.getDisplayName();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            child:
            ElevatedButton(
              child: const Text('Removed Display Name'),

              onPressed: () {
                controller.deleteDisplayName();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            child:
            ElevatedButton(
              child: const Text('Go to Home'),
              onPressed: () {
                // Get.offAll( const HomeScreen());
                Get.toNamed('/');
              },
            ),
          ),
        ],
      ),
    );
  }
}
