import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../consts/app_colors.dart';
import '../../consts/app_enums.dart';
import '../../views/widgets/text_widget.dart';

class UtilsController extends GetxController {
  final kPadding = 8.0;
  void showSnackBar({
    required String content,
    required BuildContext context,
    SnackType snackType = SnackType.error,
    SnackBarBehavior behavior = SnackBarBehavior.floating,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        content: TextWidget(
          data: content,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: _getSnackbarTextColor(snackType),
          context: context,
        ),
        behavior: behavior,
        backgroundColor: _getSnackbarColor(snackType),
        padding: EdgeInsets.symmetric(
          horizontal: kPadding * 5,
          vertical: kPadding * 2,
        ),
      ),
    );
  }

  static Color _getSnackbarColor(SnackType type) {
    if (type == SnackType.error) return AppColors.red;
    if (type == SnackType.success) return AppColors.grayColor;
    return Colors.white;
  }

  static Color _getSnackbarTextColor(SnackType type) {
    if (type == SnackType.error) return AppColors.whiteColor;
    if (type == SnackType.success) return AppColors.whiteColor;
    return AppColors.blackColor;
  }
}
