import 'package:ekam/views/widgets/sized_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../consts/app_sizes.dart';
import 'text_widget.dart';

class CheckBoxWidget extends GetResponsiveView {
  CheckBoxWidget({
    Key? key,
    required this.context,
    this.value = false,
    this.data = "",
    this.contentPadding,
    required this.onChanged,
    this.fontSize = AppSizes.smallTextSize,
    this.fontWeight = FontWeight.normal,
    this.width = 18,
    this.height = 18,
    this.color,
    this.isMandatory = false,
  }) : super(key: key);

  final BuildContext context;
  final bool value;
  final String data;
  final Function onChanged;
  final EdgeInsetsGeometry? contentPadding;
  final double fontSize;
  final FontWeight fontWeight;
  final double width;
  final double height;
  final Color? color;
  final bool isMandatory;

  @override
  Widget? builder() {
    return Container(
      padding: contentPadding ?? EdgeInsets.zero,
      child: Row(
        children: [
          SizedBoxWidget(
            width: width,
            height: height,
            child: Checkbox(
              side: BorderSide(
                width: screen.isPhone
                    ? AppSizes.getPhoneSize(1)
                    : AppSizes.getWebSize(1),
                color: color ?? Theme.of(context).primaryColor,
              ),
              value: value,
              onChanged: (value) {
                onChanged(value);
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: screen.isPhone
                    ? AppSizes.getPhoneSize(15)
                    : AppSizes.getWebSize(15),
              ),
              child: TextWidget(
                context: context,
                data: data,
                fontSize: fontSize,
                fontWeight: fontWeight,
                isMandatory: isMandatory,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
