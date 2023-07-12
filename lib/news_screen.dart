import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/home_controller.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({Key? key}) : super(key: key);
  HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('News Screen'),
          // backgroundColor: Colors.cyan,
        ),
        body: ListView.builder(
          itemCount: controller.data!.articles.length,
          itemBuilder: (context, index) => Card(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image(
                    image: NetworkImage(
                        controller.data!.articles[index].urlToImage!),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      controller.data!.articles[index].title ?? ''
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
