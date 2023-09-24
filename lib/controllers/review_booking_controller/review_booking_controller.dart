import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../utils/routes.dart';

class ReviewBookingController extends GetxController {
 

  void gotoDoctorDetailsScreen(BuildContext context) {
    context.go(Routes.doctorDetailsRoute);
    refresh();
  }

  
}
  

