
import 'package:ekam/consts/app_colors.dart';
import 'package:ekam/views/widgets/sized_box_widget.dart';
import 'package:ekam/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../consts/app_sizes.dart';

class AppBarWidget extends StatelessWidget {

  const AppBarWidget({super.key,
    required this.context,
  this.data,
  required this.onClick,
   this.isInProgress,  this.fontSize
  });
  final BuildContext context;
  final String? data;
   final Function onClick;
     final bool? isInProgress;
     final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: (){
              if (isInProgress == null || !isInProgress!) {
                onClick();
              }
            },
            child: Container(
            width: AppSizes.getPhoneSize(50),
            height: AppSizes.getPhoneSize(50),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.grayColor,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
          ),
          SizedBoxWidget(width: 40,),
          TextWidget(context: context, data: data??'',
          fontWeight: FontWeight.bold,
          fontSize: fontSize??25,
          )
        ],
      ),
    );
  }
}
