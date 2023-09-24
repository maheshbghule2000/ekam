import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../utils/routes.dart';

class BookingConfirmationController extends GetxController {
 

  void gotoViewBookings(BuildContext context) {
    context.go(Routes.viewBoookingRoute);
    refresh();
  }

  void gotoreviewBookingScreen(BuildContext context) {
    context.go(Routes.reviewBookingRoute);
    refresh();
  }
  void gotowelcomeScreen(BuildContext context) {
    context.go(Routes.hometRoute);
    refresh();
  }

  
}
  

