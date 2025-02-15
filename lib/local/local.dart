import 'package:get/get.dart';

class MyLocale extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          '1': 'الصفحه الرئيسيه',
          '2': 'عربي',
          '3': 'اتجليزي',
        },
        'en': {
          '1': 'homepage',
          '2': 'arabic',
          '3': 'english',
        }
      };
}
