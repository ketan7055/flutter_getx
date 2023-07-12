import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_x/controller/home_binding.dart';
import 'package:get_x/first_screen.dart';
import 'package:get_x/localisation/AppLocalisation.dart';
import 'package:get_x/news_screen.dart';
import 'package:get_x/view/screen/diaplay_name_screen.dart';
import 'package:get_x/view/screen/home_screen.dart';
import 'package:get_x/second_screen.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: HomeBinding(),
      locale: const Locale('fn'),
      translations: AppLocalisation(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/firstPage', page: () => const FirstScreen()),
        GetPage(name: '/secondPage', page: () => const SecondScreen()),
        GetPage(name: '/displayNamePage', page: () => DisplayNameScreen()),
        GetPage(name: '/newsPage', page: () => NewsScreen())
      ],
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.deepPurpleAccent, //<-- SEE HERE
        ),
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      /// commented for get by Name route
      // home: const HomeScreen(),
    );
  }
}
