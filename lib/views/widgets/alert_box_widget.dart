
import 'package:ekam/views/widgets/sized_box_widget.dart';
import 'package:ekam/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';
import '../../consts/app_sizes.dart';

class AlertboxWidget extends StatelessWidget {
  const AlertboxWidget({
    super.key,
    required this.context,
    this.status,
    this.text,
    this.onTap,
    this.register,
  });
  final String? status;
  final String? text;
  final String? register;
  final void Function()? onTap;
  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: AppSizes.getPhoneSize(100),
      // width: MediaQuery.of(context).size.width,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.error_outlined,
                size: AppSizes.getPhoneSize(20),
                color: AppColors.red,
              ),
              SizedBoxWidget(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    context: context,
                    data: status ?? "Account not found",
                    fontSize: AppSizes.getPhoneSize(20),
                    color: AppColors.red,
                  ),
                  SizedBoxWidget(
                    height: 10,
                  ),
                  TextWidget(
                    context: context,
                    data: text ?? "Phone number is not register with us ",
                    fontSize: AppSizes.getPhoneSize(16),
                    color: AppColors.DarkGrayColor,
                  ),
                  SizedBoxWidget(
                    height: 5,
                  ),
                  TextWidget(
                    context: context,
                    data: register ?? "Please contact your admin team ",
                    fontSize: AppSizes.getPhoneSize(16),
                    color: AppColors.DarkGrayColor,
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                onTap: onTap,
                child: Icon(
                  Icons.cancel,
                  size: AppSizes.getPhoneSize(20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
