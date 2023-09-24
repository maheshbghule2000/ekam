import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../utils/routes.dart';

class DoctorDetailsController extends GetxController {
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  void gotoSelectPackageScreen(BuildContext context) {
    context.go(Routes.selectPackageRoute);
    refresh();
  }

  var selectedDate = DateTime.now();
  var dateList = <DateTime>[];

  @override
  void onInit() {
    super.onInit();
    dateList = List.generate(7, (index) {
      return selectedDate.add(Duration(days: index));
    });
  }

  void selectDate(DateTime date) {
    selectedDate = date;
    refresh();
  }
  final RxString selectedTime = ''.obs;

  void selectTime(String time) {
    selectedTime.value = time;
  }
  List<String> generateTimeSlots() {
    final List<String> timeSlots = [];
    final DateTime startTime = DateTime(selectedDate.year, selectedDate.month,
        selectedDate.day, 19, 0); // 7:00 PM
    final DateTime endTime = DateTime(selectedDate.year, selectedDate.month,
        selectedDate.day, 23, 50); // 11:50 PM

    while (startTime.isBefore(endTime)) {
      final timeString = DateFormat('h:mm a').format(startTime);
      timeSlots.add(timeString);
      startTime
          .add(const Duration(minutes: 30)); // Add 30 minutes for the next time slot
    }

    return timeSlots;
  }
}
