
import 'package:classcheck/views/widgets/divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../consts/app_colors.dart';
import '../../../consts/app_sizes.dart';
import '../../../consts/app_strings.dart';

import '../../widgets/sized_box_widget.dart';
import '../../widgets/text_widget.dart';
import '../../widgets/transparant_button_widget.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.bodyColor,
        body: Container(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Stack(
            children: [
              // _gridViewTopMost(context),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBoxWidget(height: 20),
                  // CustomAppBar(context:context),
                  _nameWidget(context),
                  const Spacer(),
                  _middleTextWidget(context),
                  const Spacer(),
                  _bottomWidget(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _nameWidget(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            context: context,
            data: AppStrings.welcome,
            color: AppColors.lightDarkColor,
            fontSize: 18.sp,
          ),
          SizedBoxWidget(
            height: 5,
          ),
          TextWidget(
            context: context,
            data: AppStrings.name,
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 22.sp,
          ),
        ]);
  }

  _middleTextWidget(context) {
    return Padding(
      padding: EdgeInsets.only(top: 50.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppStrings.peopleManagment,
            style: GoogleFonts.baiJamjuree(
              fontWeight: FontWeight.bold,
              color: AppColors.blackColor,
              fontSize: 35.sp,
            ),
          ),
          SizedBoxWidget(
            height: 30.h,
          ),
          TransparentButton(
            context: context,
            data: 'Start Now',
            fontSize: 17,
            width: 140,
            height: 40,
            onPressed: () {
              // _homeController.gotoPhone(context);
          
            },
          ),
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
      child: DividerWidget(
        context: context,
        height: 2.h,
      ),
    );
  }
}
