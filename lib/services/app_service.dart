import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../consts/app_preferences.dart';
import '../consts/app_strings.dart';

class AppService with ChangeNotifier {
  AppService(this.sharedPreferences) {
    onAppStart();
  }

  late final SharedPreferences sharedPreferences;
  bool _loginState = false;
  bool _initialized = false;

  bool get loginState => _loginState;
  bool get initialized => _initialized;

  String _authViewname = '';
  String get authViewname => _authViewname;

  set authViewName(String value) {
    _authViewname = value;
    notifyListeners();
  }

  set loginState(bool state) {
    sharedPreferences.setBool('login', state); //AppStrings.userLogin
    _loginState = state;
    notifyListeners();
  }

  set initialized(bool value) {
    _initialized = value;
    notifyListeners();
  }

  Future<void> onAppStart() async {
    if (GetStorage().read(AppPreferences.loggedInUserPhoneNumber) != null) {
      _loginState = true;
      _initialized = true;
      notifyListeners();
    } else {
      _loginState = false;
      _initialized = true;
      notifyListeners();
    }
  }
}
