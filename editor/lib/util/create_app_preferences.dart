import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> createSharedPreferences() => SharedPreferences.getInstance();
