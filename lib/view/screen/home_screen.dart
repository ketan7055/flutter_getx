import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'.tr),
        // backgroundColor: Colors.cyan,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Column(
                children: [
                  Text(controller.index.value.toString(),
                      textAlign: TextAlign.center),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      child: const Text('increment value'),
                      onPressed: () {
                        controller.increment();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      child: const Text('Go to First Screen'),
                      onPressed: () {
                        // Get.to( const FirstScreen());
                        Get.toNamed('/firstPage');
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      child: const Text('News Screen'),
                      onPressed: () {
                        // Get.to( const FirstScreen());
                        Get.toNamed('/newsPage');
                      },
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
