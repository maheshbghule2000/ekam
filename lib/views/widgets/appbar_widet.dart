import 'package:classcheck/consts/app_colors.dart';
import 'package:classcheck/consts/app_sizes.dart';
import 'package:classcheck/views/widgets/sized_box_widget.dart';
import 'package:classcheck/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {

  const AppBarWidget({super.key,
    required this.context,
  this.data,
  required this.onClick,
   this.isInProgress
  });
  final BuildContext context;
  final String? data;
   final Function onClick;
     final bool? isInProgress;
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
              width: AppSizes.getPhoneSize(60),
              height: AppSizes.getPhoneSize(60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
                color: AppColors.whiteColor,
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                ),
              ),
          
            ),
          ),
          SizedBoxWidget(width: 40,),
          TextWidget(context: context, data: data??'',
          fontWeight: FontWeight.bold,
          fontSize: 25,
          )
        ],
      ),
    );
  }
}
