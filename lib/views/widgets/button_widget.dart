
import 'package:classcheck/views/widgets/circular_progress_indicator_widget.dart';
import 'package:classcheck/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../consts/app_sizes.dart';

class ButtonWidget extends GetResponsiveView {
  ButtonWidget({
    Key? key,
    required this.context,
    required this.data,
    this.width = 110,
    this.height = 40,
    required this.onClick,
    this.isDark = false,
    this.isInProgress = false,
    this.isOrangeColor = false,
    this.showShadow = true,
    this.borderRadius = 0,
    this.fontWeight = FontWeight.normal,
    this.fontSize = AppSizes.smallTextSize,
  }) : super(key: key);

  final BuildContext context;
  final double width;
  final double height;
  final String data;
  final Function onClick;
  final bool isDark;
  final bool isInProgress;
  final bool showShadow;
  final FontWeight fontWeight;
  final double fontSize;
  final bool isOrangeColor;
  final double borderRadius;

  @override
  Widget? builder() {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius.w
          // screen.isPhone
          //     ? AppSizes.getPhoneSize(borderRadius)
          //     : AppSizes.getWebSize(borderRadius),
          )),
      onTap: () {
        if (!isInProgress) {
          onClick();
        }
      },
      child: Container(
        width: width.w,
        // screen.isPhone
        //     ? AppSizes.getPhoneSize(width)
        //     : AppSizes.getWebSize(width),
        height: height.h,
        // screen.isPhone
        //     ? AppSizes.getPhoneSize(height)
        //     : AppSizes.getWebSize(height),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(
            borderRadius.w,
            // screen.isPhone
            //     ? AppSizes.getPhoneSize(borderRadius)
            //     : AppSizes.getWebSize(borderRadius),
          )),
          color: isDark
              ? Theme.of(context).primaryColor
              : isOrangeColor
                  ? Colors.orange
                  : Theme.of(context).primaryColorLight,
          boxShadow: [
            BoxShadow(
              color: showShadow
                  ? Theme.of(context).shadowColor
                  : Colors.transparent,
              blurRadius: 20,
              offset: Offset(0, 2)
              
              , // changes position of shadow
            ),
          ],
        ),
        child: isInProgress
            ? CircularProgressIndicatorWidget(
                context: context,
                size: 20,
                color: Theme.of(context).primaryColorLight,
              )
            : TextWidget(
                context: context,
                data: data,
                textAlign: TextAlign.center,
                color: isDark
                    ? Theme.of(context).primaryColorLight
                    : isOrangeColor
                        ? Theme.of(context).primaryColorLight
                        : Theme.of(context).primaryColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
      ),
    );
  }
}
