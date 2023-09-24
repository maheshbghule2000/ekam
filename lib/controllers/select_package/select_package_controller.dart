import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../utils/routes.dart';

class SelectPAckageController extends GetxController {
 

  void gotoReviwBooking(BuildContext context) {
    context.go(Routes.reviewBookingRoute);
    refresh();
  }

  
}
  

