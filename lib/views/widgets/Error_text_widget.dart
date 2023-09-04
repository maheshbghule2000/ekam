
import 'package:classcheck/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import '../../consts/app_sizes.dart';

class ErrorTextWidget extends GetResponsiveView {
  ErrorTextWidget({
    Key? key,
    required this.context,
    required this.data,
  }) : super(key: key);

  final BuildContext context;
  final String data;

  @override
  Widget? builder() {
    return Center(
      child: TextWidget(
        context: context,
        data: data,
        textAlign: TextAlign.center,
        fontWeight: FontWeight.w600,
        fontSize: AppSizes.largeTextSize,
      ),
    );
  }
}
