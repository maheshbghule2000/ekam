import 'package:classcheck/consts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../consts/app_enum.dart';
import 'icon_widget.dart';

// ignore: must_be_immutable

// ignore: must_be_immutable
class SearchTextFieldWidgetWeb extends GetResponsiveView {
  SearchTextFieldWidgetWeb({
    Key? key,
    this.width = 150,
    this.height = 35,
    this.hintText,
    this.fontsize,
    this.color,
    this.showSuffixIcon = false,
    required this.onChanged,
  }) : super(key: key);

  final double width;
  final double height;
  final String? hintText;
  final Color? color;
  final double? fontsize;
  final Function onChanged;
  bool showSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: color ?? AppColors.bodyColor,

        border: Border.all(
          color: AppColors.dividerColor,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            32.r,
          ),
        ),
      ),
      child: TextField(
        maxLines: 1,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          contentPadding: EdgeInsets.only(
            left: 10.w,
            right: 10.w,
          ),
          suffixIcon: showSuffixIcon == true
              ? Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: IconWidget(
                    context: context,
                    data: AppIcons.search.name,
                    width: 15.w,
                    height: 20.w,
                    color: AppColors.grayColor,
                  ),
                )
              : SizedBox(),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'Kumbh Sans',
            fontWeight: FontWeight.normal,
            fontSize: fontsize ?? 20.sp,
            color: AppColors.grayColor,
          ),
        ),
        style: TextStyle(
          fontFamily: 'Kumbh Sans',
          fontWeight: FontWeight.normal,
          fontSize: fontsize ?? 20.h,
          color: AppColors.blackColor,
        ),
        onChanged: (value) {
          onChanged(value);
        },
      ),
    );
  }
}
