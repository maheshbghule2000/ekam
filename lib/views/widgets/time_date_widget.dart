import 'package:baap_people_mgnt/views/widgets/sized_box_widget.dart';
import 'package:baap_people_mgnt/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';

class TimeDateWidget extends StatelessWidget {
   TimeDateWidget({
    this.time,
    this.date,
    super.key});
final String ?time;
final String ?date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidget(context: context,
        fontSize: 15,
        color: AppColors.blackColor,
         data:date??'currunt date'),
         SizedBoxWidget(height: 5,),
          TextWidget(context: context,
        fontSize: 23,
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor,
         data:time??'currunt time')
      ],
    );
  }
}