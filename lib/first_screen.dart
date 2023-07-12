import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/home_controller.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('First Screen'.tr),
        // backgroundColor: Color s.cyan,
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX<HomeController>(
              // init: HomeController(),
              builder: (controller) {
                return  Column(
                  children: [
                    Text(controller.index.value.toString(), textAlign: TextAlign.center),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        child: const Text('Go to Second Screen'),
                        onPressed: () {
                          // Get.to( const FirstScreen());
                          Get.toNamed( '/secondPage');
                        },
                      ),
                    ),
                  ],
                );
              }),

        ],
      ),
    );
  }
}
