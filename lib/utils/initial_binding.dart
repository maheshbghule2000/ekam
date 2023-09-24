
import 'package:ekam/controllers/booking_confirmation_controller/booking_confirmation_controller.dart';
import 'package:ekam/controllers/doctor_details_controller/doctor_details_controller.dart';
import 'package:ekam/controllers/review_booking_controller/review_booking_controller.dart';
import 'package:ekam/controllers/select_package/select_package_controller.dart';
import 'package:ekam/controllers/view_bookings_controller/view_bookings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/welcome_controller/welcome_controller.dart';


class InitialBinding extends Bindings {
  @override
  void dependencies() {
    initialBindings();
  }
}

void initialBindings() {

  Get.lazyPut<TextEditingController>(() => TextEditingController());
  Get.lazyPut<WelcomeController>(() => WelcomeController());
  Get.lazyPut<DoctorDetailsController>(() => DoctorDetailsController());
  Get.lazyPut<SelectPAckageController>(() => SelectPAckageController());
  Get.lazyPut<ViewBookingsController>(() => ViewBookingsController());
  Get.lazyPut<BookingConfirmationController>(() => BookingConfirmationController());
  Get.lazyPut<ReviewBookingController>(() => ReviewBookingController());
  // Get.lazyPut(()=>WelcomeController());


}
