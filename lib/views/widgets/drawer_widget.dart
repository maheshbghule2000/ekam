
import 'package:ekam/views/widgets/sized_box_widget.dart';
import 'package:ekam/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';
import '../../consts/app_sizes.dart';
import '../../consts/app_strings.dart';


class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
        color: AppColors.bodyColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, -2),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: AppSizes.getPhoneSize(66), left: AppSizes.getPhoneSize(40)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              context: context,
              data: AppStrings.menuItem,
              color: AppColors.grayColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            SizedBoxWidget(
              height: 10,
            ),
            Container(
              width: AppSizes.getPhoneSize(60),
              height: AppSizes.getPhoneSize(1),
              color: AppColors.blackColor,
            ),
            SizedBoxWidget(
              height: 40,
            ),
            
          ],
        ),
      ),
    );
  }
}
