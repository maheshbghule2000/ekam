import 'package:classcheck/views/widgets/sized_box_widget.dart';
import 'package:classcheck/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/app_colors.dart';
import '../../consts/app_sizes.dart';

class CardList extends GetResponsiveView {
  CardList(
      {Key? key,
      required this.context,
      required this.days,
      required this.datetime,
       this.buttonColor,
      this.color})
      : super(key: key);
  final BuildContext context;
  final String days;
  final String datetime;
  final Color? color;
    final Color? buttonColor;

  @override
  Widget? builder() {
    return Padding(
      padding: EdgeInsets.only(
        top: AppSizes.getPhoneSize(10),
      ),
      child: Container(
        height: AppSizes.getPhoneSize(100),
        decoration: BoxDecoration(
          color: AppColors.containerColor,
          borderRadius: BorderRadius.circular(
            AppSizes.getPhoneSize(13),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: AppSizes.getPhoneSize(10),
                left: AppSizes.getPhoneSize(20),
                bottom: AppSizes.getPhoneSize(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    context: context,
                    data: days,
                    color: AppColors.grayColor,
                    fontSize: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        context: context,
                        data: datetime,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        context: context,
                        data: "Sick Leave",
                        color: AppColors.grayColor,
                        fontSize: 12,
                      ),
                      SizedBoxWidget(
                        width: 120,
                      ),
                      Container(
                        height: AppSizes.getPhoneSize(30),
                        width: AppSizes.getPhoneSize(85),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: buttonColor??AppColors.faintGreenColor,
                        ),
                        child: Center(
                          child: TextWidget(
                            context: context,
                            data: "Approved",
                            color: color??AppColors.blackColor,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
