import 'package:ekam/consts/app_colors.dart';
import 'package:ekam/controllers/booking_confirmation_controller/booking_confirmation_controller.dart';
import 'package:ekam/views/widgets/divider_widget.dart';
import 'package:ekam/views/widgets/sized_box_widget.dart';
import 'package:ekam/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../consts/app_sizes.dart';
import '../../widgets/appbar_widet.dart';
import '../../widgets/custom_button_widget.dart';

class BookingConfirmationScreen extends StatefulWidget {
  const BookingConfirmationScreen({super.key});

  @override
  State<BookingConfirmationScreen> createState() =>
      _BookingConfirmationScreenState();
}

final BookingConfirmationController _bookingConfirmationController = Get.find();

class _BookingConfirmationScreenState extends State<BookingConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: AppSizes.getPhoneSize(30),
          left: AppSizes.getPhoneSize(20),
          right: AppSizes.getPhoneSize(20),
          bottom: AppSizes.getPhoneSize(30),
        ),
        child: Column(
          children: [
            _confirmationWidget(context),
            const SizedBoxWidget(
              height: 100,
            ),
            _successWidget(context),
            const SizedBoxWidget(
              height: 30,
            ),
            _nameWidget(context),
            const SizedBoxWidget(
              height: 10,
            ),
            _timeDateWidget(context),
            Spacer(),
            DividerWidget(context: context),
            const SizedBoxWidget(
              height: 10,
            ),
            _nextButtonWidget(context)
          ],
        ),
      ),
    ));
  }

  _nextButtonWidget(BuildContext context) {
    return CustomButtonWidget(
        context: context,
        data: 'View Appointments',
        width: MediaQuery.of(context).size.width,
        height: 50,
        color: AppColors.whiteColor,
        backgroundColor: AppColors.buttonColor,
        borderRadius: 50,
        onClick: () {
          _bookingConfirmationController.gotowelcomeScreen(context);
        });
  }

  _confirmationWidget(BuildContext context) {
    return AppBarWidget(
        context: context,
        data: 'Confirmation',
        fontSize: 20,
        onClick: () {
          _bookingConfirmationController.gotoreviewBookingScreen(context);
          // Navigator.push<void>(
          //   context,
          //   MaterialPageRoute<void>(
          //     builder: (BuildContext context) =>
          //         SelectPackageScreen(),
          //   ),
          // );
        });
  }

  _successWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              color: AppColors.buttonColor,
              borderRadius: BorderRadius.circular(150)),
          child: const Center(
              child: Icon(
            Icons.check,
            size: 100,
            color: AppColors.whiteColor,
          )),
        ),
        const SizedBoxWidget(
          height: 10,
        ),
        TextWidget(
          context: context,
          data: 'Appointment confirmed!',
          fontSize: 26,
          color: AppColors.blackColor,
        ),
        const SizedBoxWidget(
          height: 10,
        ),
        TextWidget(
          context: context,
          data: 'You have successfully booked appointment with',
          fontSize: 15,
          color: AppColors.blackColor,
        ),
        const SizedBoxWidget(
          height: 5,
        ),
        TextWidget(
          context: context,
          data: 'Dr. Jonny Wilson',
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor,
        ),
        const SizedBoxWidget(
          height: 30,
        ),
        DividerWidget(context: context)
      ],
    );
  }

  _nameWidget(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.person,
          size: AppSizes.getPhoneSize(30),
          color: AppColors.buttonColor,
        ),
        const SizedBoxWidget(
          width: 10,
        ),
        TextWidget(
          context: context,
          data: 'Esther Howard',
          fontWeight: FontWeight.bold,
          fontSize: AppSizes.getPhoneSize(20),
        )
      ],
    );
  }

  _timeDateWidget(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.date_range,
          size: AppSizes.getPhoneSize(30),
          color: AppColors.buttonColor,
        ),
        const SizedBoxWidget(
          width: 10,
        ),
        TextWidget(
          context: context,
          data: '16 Aug 2023',
          fontWeight: FontWeight.bold,
          fontSize: AppSizes.getPhoneSize(20),
        ),
        const SizedBoxWidget(
          width: 20,
        ),
        Icon(
          Icons.timer,
          size: AppSizes.getPhoneSize(30),
          color: AppColors.buttonColor,
        ),
        const SizedBoxWidget(
          width: 10,
        ),
        TextWidget(
          context: context,
          data: '10 AM',
          fontWeight: FontWeight.bold,
          fontSize: AppSizes.getPhoneSize(20),
        )
      ],
    );
  }
}
