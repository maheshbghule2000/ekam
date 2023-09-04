import 'dart:async';
import 'package:get_storage/get_storage.dart';
import '../../consts/app_preferences.dart';

class AuthService {
  final StreamController<bool> _onAuthStateChange =
      StreamController.broadcast();

  Stream<bool> get onAuthStateChange => _onAuthStateChange.stream;

  Future<bool> login() async {
    _onAuthStateChange.add(true);
    return true;
  }

  void logOut() {
    GetStorage().erase();
    GetStorage().remove(AppPreferences.accessToken);
    GetStorage().remove(AppPreferences.loggedInUserPhoneNumber);
    GetStorage().remove(AppPreferences.loggedInUserId);
    GetStorage().remove(AppPreferences.loggedInUserName);
    _onAuthStateChange.add(false);
  }
}
