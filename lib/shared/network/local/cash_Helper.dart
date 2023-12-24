import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CachHelper
{
  static SharedPreferences? sharedPreferences;

  static init()async
  {
    sharedPreferences= await SharedPreferences.getInstance();
  }
 static Future<bool?> putBoolean({
    required String key,
    required bool value
})async
  {
    await sharedPreferences?.setBool(key, value);
    return null;
  }

  static bool? getBoolean({
    required String key,
  })
  => sharedPreferences?.getBool(key!);

}