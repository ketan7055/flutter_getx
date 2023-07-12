import 'package:get/get.dart';
import 'package:get_x/localisation/language/ar.dart';
import 'package:get_x/localisation/language/en.dart';
import 'package:get_x/localisation/language/fr.dart';

class AppLocalisation extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    "en" : en,
    "ar" : ar,
    "fr" : fr,
  };

}