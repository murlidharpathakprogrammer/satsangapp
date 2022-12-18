import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePrefs{
  static const themStatus = "THEMESTATUS";
  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(themStatus, value);
  }

  Future <bool> getTheme() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(themStatus) ?? false;
  }
}