import 'package:classcheck/consts/app_colors.dart';
import 'package:classcheck/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../consts/app_sizes.dart';
import '../../consts/app_strings.dart';
import 'divider_widget.dart';

class CustomFooterWidget extends GetResponsiveView {
  CustomFooterWidget({
    Key? key,
    required this.context,
    this.data,
  });
  final BuildContext context;
  final String? data;

  @override
  Widget? builder() {
    return Padding(
      padding: EdgeInsets.only(
        left: AppSizes.getPhoneSize(39.5),
        bottom: AppSizes.getPhoneSize(20),
        right: AppSizes.getPhoneSize(39.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
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
