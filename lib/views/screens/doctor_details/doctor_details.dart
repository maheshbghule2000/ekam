import 'package:ekam/controllers/doctor_details_controller/doctor_details_controller.dart';
import 'package:ekam/views/widgets/about_doctor_widet.dart';
import 'package:ekam/views/widgets/divider_widget.dart';
import 'package:ekam/views/widgets/sized_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../consts/app_colors.dart';
import '../../../consts/app_sizes.dart';
import '../../widgets/appbar_widet.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/text_widget.dart';
import '../../widgets/doctor_details_widget.dart';
import '../select_package/select_package.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen({super.key});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

final DoctorDetailsController _doctorDeatilsController =
    Get.put(DoctorDetailsController());

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: AppSizes.getPhoneSize(30),
            left: AppSizes.getPhoneSize(20),
            bottom: AppSizes.getPhoneSize(30),
          ),
          child: Column(
          
            children: [
              AppBarWidget(
                  context: context,
                  data: 'Book Appointment',
                  fontSize: 20,
                  onClick: () {
                    _doctorDeatilsController.gotoWelcomeScreen(context);
                    // Navigator.push<void>(
                    //   context,
                    //   MaterialPageRoute<void>(
                    //     builder: (BuildContext context) =>
                    //         SelectPackageScreen(),
                    //   ),
                    // );
                  }),
              SizedBoxWidget(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: AppSizes.getPhoneSize(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DoctorProfileWidget(
                      imageUrl:
                          "https://hireforekam.s3.ap-south-1.amazonaws.com/doctors/1-Doctor.png",
                      onTap: () {},
                    ),
                    SizedBoxWidget(
                      height: 5,
                    ),
                    _dividerWidget(context),
                    SizedBoxWidget(
                      height: 10,
                    ),
                    _aboutDoctorWidget(context),
                    SizedBoxWidget(
                      height: 15,
                    ),
                    _bookappointment(context),
                    _dayWidget(context),
                    TextWidget(
                      context: context,
                      data: 'Time',
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackColor,
                      fontSize: 18,
                    ),
                    // _timeWidget(context)

                  
                    SizedBoxWidget(
                      height: 5,
                    ),
                  ],
                ),
              ),
              Spacer(),
               _nextButtonWidget(context),
            ],
          ),
        ),
        // bottomNavigationBar: _nextButtonWidget(context),
      ),
    );
  }

  _dividerWidget(BuildContext context) {
    return Column(
      children: [
        DividerWidget(
          context: context,
          height: 1.5,
        ),
      ],
    );
  }

  _aboutDoctorWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AboutDoctorWidget(
          context: context,
          iconData: Icons.people_alt,
          color: AppColors.buttonColor,
          secondNumbers: '7,500+',
          title: 'Patients',
        ),
        AboutDoctorWidget(
          context: context,
          iconData: Icons.medical_services,
          color: AppColors.buttonColor,
          secondNumbers: '10+',
          title: 'Years Exp.',
        ),
        AboutDoctorWidget(
          context: context,
          iconData: Icons.star_outlined,
          color: AppColors.buttonColor,
          secondNumbers: '4.9+',
          title: 'Rating',
        ),
        AboutDoctorWidget(
          context: context,
          iconData: Icons.message_outlined,
          color: AppColors.buttonColor,
          secondNumbers: '4956+',
          title: 'Review',
        ),
      ],
    );
  }

  _bookappointment(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextWidget(
          context: context,
          data: 'BOOK APPOINTMENT',
          color: AppColors.faintGrayColor,
          fontSize: 18,
        ),
        SizedBoxWidget(
          height: 5,
        ),
        TextWidget(
          context: context,
          data: 'Day',
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor,
          fontSize: 18,
        ),
      ],
    );
  }

  _dayWidget(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _doctorDeatilsController.dateList.length,
        itemBuilder: (context, index) {
          final date = _doctorDeatilsController.dateList[index];
          final isSelected = _doctorDeatilsController.selectedDate == date;
          final dayFormat = DateFormat('E');
          final dateFormat = DateFormat('d MMM');

          return GestureDetector(
            onTap: () {
              _doctorDeatilsController.selectDate(date);
            },
            child: Obx(() => _doctorDeatilsController.isLoading
                ? const SizedBox()
                : Container(
                    height: AppSizes.getPhoneSize(60),
                    width: AppSizes.getPhoneSize(120),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.buttonColor : Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: isSelected
                            ? AppColors.faintGrayColor
                            : AppColors.blackColor,
                        width: 2.0,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          context: context,
                          data: dayFormat.format(date),
                          fontSize: 13,
                          color: isSelected
                              ? AppColors.blackColor
                              : AppColors.blackColor,
                        ),
                        TextWidget(
                          context: context,
                          data: dateFormat.format(date),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: isSelected
                              ? AppColors.blackColor
                              : AppColors.blackColor,
                        ),
                      ],
                    ),
                  )),
          );
        },
      ),
    );
  }

  // _timeWidget(BuildContext context) {
  //   final timeSlots = _doctorDeatilsController.generateTimeSlots(); // Get the time slots
  //   return SizedBox(
  //     height: 80,
  //     child: ListView.builder(
  //       scrollDirection: Axis.horizontal,
  //       itemCount: timeSlots.length,
  //       itemBuilder: (context, index) {
  //         final time = timeSlots[index];
  //         final isSelected = _doctorDeatilsController.selectedTime == time;

  //         return GestureDetector(
  //           onTap: () {
  //             _doctorDeatilsController.selectTime(time);
  //           },
  //           child: Obx(() => _doctorDeatilsController.isLoading
  //               ? const SizedBox()
  //               : Container(
  //                   height: AppSizes.getPhoneSize(60),
  //                   width: AppSizes.getPhoneSize(120),
  //                   margin: const EdgeInsets.all(8),
  //                   decoration: BoxDecoration(
  //                     color: isSelected ? AppColors.buttonColor : Colors.white,
  //                     borderRadius: BorderRadius.circular(30),
  //                     border: Border.all(
  //                       color: isSelected
  //                           ? AppColors.faintGrayColor
  //                           : AppColors.blackColor,
  //                       width: 2.0,
  //                     ),
  //                   ),
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: [
  //                       TextWidget(
  //                         context: context,
  //                         data: time,
  //                         fontSize: 13,
  //                         color: isSelected
  //                             ? AppColors.blackColor
  //                             : AppColors.blackColor,
  //                       ),
  //                     ],
  //                   ),
  //                 )),
  //         );
  //       },
  //     ),
  //   );
  // }
  _nextButtonWidget(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(   right: AppSizes.getPhoneSize(20),),
      child: CustomButtonWidget(
          context: context,
          data: 'Make Appointment',
          width: MediaQuery.of(context).size.width,
          height: 50,
          color: AppColors.whiteColor,
          backgroundColor: AppColors.buttonColor,
          borderRadius: 50,
          onClick: () {
            _doctorDeatilsController.gotoSelectPackageScreen(context);
          }),
    );
  }
}
