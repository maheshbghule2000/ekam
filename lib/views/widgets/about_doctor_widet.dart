import 'package:ekam/consts/app_colors.dart';
import 'package:ekam/consts/app_sizes.dart';
import 'package:ekam/views/widgets/sized_box_widget.dart';
import 'package:ekam/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AboutDoctorWidget extends StatefulWidget {
  final BuildContext context;
  final IconData? iconData;
  final double size;
  final Color color;

  final String? secondNumbers;
  final String? title;
  const AboutDoctorWidget(
      {this.iconData,
      required this.context,
      this.secondNumbers,
      this.title,
      this.size = 24.0,
      this.color = Colors.blue,
      super.key});

  @override
  State<AboutDoctorWidget> createState() => _AboutDoctorWidgetState();
}

class _AboutDoctorWidgetState extends State<AboutDoctorWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: AppSizes.getPhoneSize(60), // Set the width as needed
          height: AppSizes.getPhoneSize(60),
          // Set the height as needed
          decoration: BoxDecoration(
            color: AppColors.faintBlueColor,
            borderRadius: BorderRadius.circular(100),
            // Border radius
          ),
          child: Center(
              child: Icon(
            widget.iconData,
            size: widget.size,
            color: widget.color,
          )),
        ),
        SizedBoxWidget(
          height: 3,
        ),
        TextWidget(
          context: context,
          data: widget.secondNumbers ?? '',
          fontSize: 18,
          color: AppColors.buttonColor,
        ),
        SizedBoxWidget(
          height: 3,
        ),
        TextWidget(
          context: context,
          data: widget.title ?? '',
          fontSize: 18,
          color: AppColors.grayColor,
        )
      ],
    );
  }
}
