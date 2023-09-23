import 'package:classcheck/views/widgets/sized_box_widget.dart';
import 'package:classcheck/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';
import '../../consts/app_sizes.dart';

class SelectPackageWidget extends StatefulWidget {
  final IconData iconData;
  final double size;
  final Color color;
  final String? massege;
  final String? package;
  bool isChecked = false;
   
  SelectPackageWidget({
    super.key,
    required this.iconData,
    this.size = 24.0,
    this.color = Colors.black,
    this.massege,
    this.package,
  });

  @override
  State<SelectPackageWidget> createState() => _SelectPackageWidgetState();
}

class _SelectPackageWidgetState extends State<SelectPackageWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: AppSizes.getPhoneSize(50), // Set the width as needed
                    height: AppSizes.getPhoneSize(50),
                    // Set the height as needed
                    decoration: BoxDecoration(
                      color: AppColors.faintBlueColor,

                      borderRadius: BorderRadius.circular(40),
                      // Border radius
                    ),
                    child: Center(
                        child: Icon(
                      widget.iconData,
                      size: widget.size,
                      color: widget.color,
                    )),
                  ),
                ],
              ),
              SizedBoxWidget(
                width: AppSizes.getPhoneSize(30),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                    context: context,
                    data: widget.massege ?? 'massege',
                    fontSize: AppSizes.getPhoneSize(20),
                  ),
                  TextWidget(
                    context: context,
                    data: widget.package ?? 'package',
                    fontSize: AppSizes.getPhoneSize(15),
                    //  fontSize: App,
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio<bool>(
                    value: true,
                    groupValue: isChecked,
                    onChanged: (bool? value) {
                      
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
