import 'package:get/get.dart';
import 'package:get_x/model/NewsApi.dart';
import 'package:intl/intl.dart';

class NewsService extends GetConnect implements GetxService {
 Future<NewsApi> getNewsData() async {
   var url = 'https://newsapi.org/v2/everything?q=tesla&from=${DateFormat('yyyy-MM-dd').format(DateTime.now().subtract(const Duration(days:1)))}&sortBy=publishedAt&apiKey=d227d06027f44b9cb75e9c45bc7ec858';
   print('url: $url');
    var response = await get(
        url);
    print('response:: ${response.body}');
    return NewsApi.fromJson(response.body);
  }
}
