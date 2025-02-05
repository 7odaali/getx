import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static const String _key = 'lang';

  static Future<void> saveLang(String lang) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, lang);
  }

  static Future<String> getLang() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_key) ?? 'en';
  }
}
