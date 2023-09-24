
import 'package:ekam/consts/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../consts/app_colors.dart';
class TextformFieldWidget extends StatefulWidget {
  const TextformFieldWidget(
      {super.key,
      this.hintText,
      this.height,
      this.rouneded = 5.0,
      this.fontWeight,
      this.focusNode,
      this.suffixIcon,
      this.isSuffixIconShow = false,
      this.isRounded = true,
      this.backgroundColor,
      this.controller,
      this.textInputType,
      this.inputFormater,
      this.onChanged,
      this.initialValue,
      this.isBorderColor = true,
      this.hintTextColor = AppColors.DarkGrayColor,
      this.fontSize});

  final String? initialValue;
  final String? hintText;
  final bool isSuffixIconShow;
  final double? height;
  final double rouneded;
  final bool isRounded;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? backgroundColor;
  final Color? hintTextColor;
  final FocusNode? focusNode;
  final String? suffixIcon;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormater;
  final bool? isBorderColor;
  final Function(String)? onChanged;

  @override
  State<TextformFieldWidget> createState() => _TextformFieldWidgetState();
}

class _TextformFieldWidgetState extends State<TextformFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius:
            widget.isRounded ? BorderRadius.circular(widget.rouneded) : null,
      ),
      height: widget.height,
      child: TextFormField(
          cursorHeight: AppSizes.getPhoneSize(30),
          initialValue: widget.initialValue,
          cursorColor: AppColors.DarkGrayColor,
          inputFormatters: widget.inputFormater,
          keyboardType: widget.textInputType,
          autofocus: true,
          controller: widget.controller,
          focusNode: widget.focusNode,
          // onChanged: widget.onChanged,

          onFieldSubmitted: widget.onChanged,
          style: GoogleFonts.kumbhSans(
              fontSize: widget.fontSize,
              fontWeight: widget.fontWeight,
              color: AppColors.blackColor),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.h),
              hintText: widget.hintText,
              hintStyle: GoogleFonts.kumbhSans(
                  fontSize: widget.fontSize,
                  fontWeight: widget.fontWeight,
                  color: widget.hintTextColor),
              enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.rouneded),
                  borderSide: BorderSide(
                      width: 1.w,
                      color: (widget.isBorderColor ?? false)
                          ? Colors.transparent
                          : AppColors.grayColor)),
              focusedBorder: widget.isRounded
                  ? UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(widget.rouneded),
                      borderSide: BorderSide(
                          width: 1.w,
                          color: (widget.isBorderColor ?? false)
                              ? AppColors.bodyColor
                              : AppColors.bgButtonColor))
                  : null,
              border: widget.isRounded
                  ? UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(widget.rouneded),
                      borderSide: BorderSide(
                          width: 1.w,
                          color: (widget.isBorderColor ?? false)
                              ? AppColors.bgButtonColor
                              : AppColors.bgButtonColor))
                  : null)),
    );
  }
}
