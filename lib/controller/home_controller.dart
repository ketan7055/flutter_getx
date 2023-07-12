import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_x/model/NewsApi.dart';
import 'package:get_x/model/NewsService.dart';

class HomeController extends GetxController {
  String name = 'John';
  RxInt index = 0.obs;
GetStorage storage = GetStorage();
  increment() {
    index.value++;
    // update();
  }

  @override
  void onInit() {
    getNewsData();
    super.onInit();

  }
  NewsApi? data;
  getNewsData() async{
    data = await NewsService().getNewsData();
    print('data$data');
  }
  void displayName(){
    storage.write('name', name);
    print('saved successfully');
    update();
  }

  void getDisplayName(){
   String name = storage.read('name') ??  'deleted';
   print('name ::$name');
   update();
  }
  void deleteDisplayName(){
    storage.remove('name');
    print('deleted successfully');
    update();
  }
}
