
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


}
