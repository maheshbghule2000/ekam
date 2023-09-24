import 'package:ekam/controllers/review_booking_controller/review_booking_controller.dart';
import 'package:ekam/views/widgets/divider_widget.dart';
import 'package:ekam/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../consts/app_colors.dart';
import '../../../consts/app_sizes.dart';
import '../../widgets/appbar_widet.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/doctor_details_widget.dart';
import '../../widgets/sized_box_widget.dart';
import '../select_package/select_package.dart';

class ReviewBookingScreen extends StatefulWidget {
  const ReviewBookingScreen({super.key});

  @override
  State<ReviewBookingScreen> createState() => _ReviewBookingScreenState();
}

final ReviewBookingController _reviewBookingController = Get.find();

class _ReviewBookingScreenState extends State<ReviewBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.only(
        top: AppSizes.getPhoneSize(30),
        left: AppSizes.getPhoneSize(20),
        right: AppSizes.getPhoneSize(20),
        bottom: AppSizes.getPhoneSize(20),
      ),
      child: Column(
        children: [
          AppBarWidget(
              context: context,
              data: 'Review Summary',
              fontSize: 20,
              onClick: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => SelectPackageScreen(),
                  ),
                );
              }),
          SizedBoxWidget(
            height: 10,
          ),
          DoctorProfileWidget(
            imageUrl:
                "https://hireforekam.s3.ap-south-1.amazonaws.com/doctors/1-Doctor.png",
            onTap: () {},
          ),
          const SizedBoxWidget(
            height: 10,
          ),
          _dividerWidget(context),
          const SizedBoxWidget(
            height: 15,
          ),
          _reviewWidget(context),
          const Spacer(),
          DividerWidget(context: context),
            const SizedBoxWidget(
            height: 15,
          ),
          _nextButtonWidget(context)
        ],
      ),
    )));
  }

  _reviewWidget(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              context: context,
              data: 'Date & Hour',
              fontSize: 18,
              color: AppColors.lightGrayDarkColor,
            ),
            TextWidget(
              context: context,
              data: 'August 24, 2023 | 10:00 A',
              fontSize: 18,
              color: AppColors.lightGrayDarkColor,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
        SizedBoxWidget(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              context: context,
              data: 'Package',
              fontSize: 18,
              color: AppColors.lightGrayDarkColor,
            ),
            TextWidget(
              context: context,
              data: 'Messaging',
              fontSize: 18,
              color: AppColors.lightGrayDarkColor,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
        SizedBoxWidget(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              context: context,
              data: 'Duration',
              fontSize: 18,
              color: AppColors.lightGrayDarkColor,
            ),
            TextWidget(
              context: context,
              data: '30 Min',
              fontSize: 18,
              color: AppColors.lightGrayDarkColor,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
        SizedBoxWidget(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              context: context,
              data: 'Booking For',
              fontSize: 18,
              color: AppColors.lightGrayDarkColor,
            ),
            TextWidget(
              context: context,
              data: 'Self',
              fontSize: 18,
              color: AppColors.lightGrayDarkColor,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
       
      ],
    );
  }

  _dividerWidget(BuildContext context) {
    return DividerWidget(
      context: context,
      height: 1.5,
    );
  }

  _nextButtonWidget(BuildContext context) {
    return CustomButtonWidget(
        context: context,
        data: 'Next',
        width: MediaQuery.of(context).size.width,
        height: 50,
        color: AppColors.whiteColor,
        backgroundColor: AppColors.buttonColor,
        borderRadius: 50,
        onClick: () {
          _reviewBookingController.gotoBookConfirmation(context);
        });
  }
}
