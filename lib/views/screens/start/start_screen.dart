import 'package:classcheck/controllers/welcome_controller/welcome_controller.dart';
import 'package:classcheck/views/screens/doctor_details/doctor_details.dart';
import 'package:classcheck/views/widgets/custom_button_widget.dart';
import 'package:classcheck/views/widgets/divider_widget.dart';
import 'package:classcheck/views/widgets/sized_box_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../consts/app_colors.dart';
import '../../../consts/app_sizes.dart';
import '../../../consts/app_strings.dart';
import '../../widgets/text_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

final WelcomeController _welcomeController = Get.find();

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBoxWidget(
              height: 40,
            ),
            _welcomeTextWidget(context),
            _requestSentWidget(context),

            _bottomWidget(context),
            // _bottomWidget(context)
          ],
        ),
      )),
    );
  }

  _welcomeTextWidget(BuildContext context) {
    return Column(
      children: [
        TextWidget(
          data: 'Baap manager',
          fontWeight: FontWeight.bold,
          context: context,
          fontSize: 50,
        ),
        const SizedBox(
          height: 15,
        ),
        TextWidget(
          data: 'Remember Your Vision',
          context: context,
          fontSize: 15,
        )
      ],
    );
  }

  _requestSentWidget(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/doctor.png',
           
            ),
          ),
          // Center(
          //   child: Image.network(
          //     'https://baap-app-images.s3.ap-south-1.amazonaws.com/scaled_doctor.png',
          //     height: 300,
          //     width: 300,
          //   ),
          // ),
        
        
          CustomButtonWidget(
              data: 'Next..',
              color: AppColors.containerColor,
              context: context,
              fontSize: 25,
              height: 50,
              borderRadius: 30,
              backgroundColor: AppColors.blackColor,
              width: MediaQuery.of(context).size.width,
              onClick: () {
                   Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            DoctorDetailsScreen(),
                      ),
                    );
                // _welcomeController.gotoDoctorDetailsScreen(context);
              }),
        ],
      ),
    );
  }

  _bottomWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _dividerWidget(context),
          TextWidget(
            context: context,
            data: AppStrings.poweredBy,
            color: AppColors.lightDarkColor,
            fontSize: AppSizes.bodyLargeTextSizePhone.sp,
          ),
          TextWidget(
            context: context,
            data: AppStrings.companyName,
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor,
            fontSize: AppSizes.bodyLargeTextSizePhone.sp,
          ),
        ],
      ),
    );
  }

  _dividerWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        children: [
          DividerWidget(
            context: context,
            height: 2.h,
          ),
        ],
      ),
    );
  }
}
