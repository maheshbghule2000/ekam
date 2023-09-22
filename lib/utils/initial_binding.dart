
import 'package:classcheck/controllers/welcome_controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class InitialBinding extends Bindings {
  @override
  void dependencies() {
    initialBindings();
  }
}

void initialBindings() {

  Get.lazyPut<TextEditingController>(() => TextEditingController());
  Get.lazyPut<WelcomeController>(() => WelcomeController());
  // Get.lazyPut(()=>WelcomeController());


}
