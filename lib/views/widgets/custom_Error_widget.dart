import 'package:classcheck/consts/app_sizes.dart';
import 'package:classcheck/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../consts/app_colors.dart';
import 'divider_widget.dart';
import 'icon_widget.dart';

class CustomErrorWidget extends GetResponsiveView {
  CustomErrorWidget({
    Key? key,
    required this.context,
    this.title,
    this.message,
    this.onClose,
    this.isSuccessMessage,
  }) : super(key: key);

  final BuildContext context;
  final String? title;
  final String? message;
  final Function? onClose;
  final bool? isSuccessMessage;

  @override
  Widget? builder() {
    return Container(
      color: isSuccessMessage == true
          ? Theme.of(context)
              .copyWith(indicatorColor: AppColors.DarkGrayColor)
              .indicatorColor
              .withOpacity(0.6)
          : Theme.of(context).errorColor.withOpacity(0.10),
      padding: EdgeInsets.all(
        screen.isPhone
            ? AppSizes.getPhoneSize(AppSizes.contentPaddingPhone)
            : AppSizes.getWebSize(AppSizes.contentPaddingWeb),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleWidget(context),
          DividerWidget(
            context: context,
            color: Theme.of(context).primaryColorLight,
            padding: EdgeInsets.symmetric(
              vertical: screen.isPhone
                  ? AppSizes.getPhoneSize(AppSizes.contentPaddingPhone)
                  : AppSizes.getWebSize(AppSizes.contentPaddingWeb),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: screen.isPhone
                    ? AppSizes.getPhoneSize(AppSizes.contentPaddingPhone)
                    : AppSizes.getWebSize(AppSizes.contentPaddingWeb)),
            child: _messageWidget(context),
          )
        ],
      ),
    );
  }

  _titleWidget(context) {
    return Row(
      children: [
        Expanded(
          child: TextWidget(
            context: context,
            //data: title ?? "Message",
            data: "Message",
            fontSize: screen.isPhone
                ? AppSizes.mediumTextSize
                : AppSizes.largeTextSize,
            fontWeight: FontWeight.bold,
            color: isSuccessMessage == true
                ? Colors.white
                : Theme.of(context).colorScheme.error,
          ),
        ),
        IconWidget(
          context: context,
          data:"close",
          color: isSuccessMessage == true
              ? Colors.white
              : Theme.of(context).errorColor,
          onClick: () {
            if (onClose != null) {
              onClose!();
            }
          },
        ),
      ],
    );
  }

  _messageWidget(context) {
    return TextWidget(
      context: context,
      data: message ?? "",
      fontSize: AppSizes.mediumTextSize,
      fontWeight: FontWeight.w600,
      color: isSuccessMessage == true
          ? Colors.white
          : Theme.of(context).errorColor,
    );
  }
}
