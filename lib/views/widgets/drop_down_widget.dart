import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../consts/app_colors.dart';
import '../../consts/app_sizes.dart';
import 'text_widget.dart';

class DropDownFormWidget extends GetResponsiveView {
  DropDownFormWidget({
    Key? key,
    required this.context,
    required this.list,
    required this.selectedValue,
    required this.onChanged,
    this.borderRadius = 10,
    this.height = 50,
    this.backgroundColor = AppColors.bodyColor,
  }) : super(key: key);

  final BuildContext context;
  final List<String> list;
  final String selectedValue;
  final Function onChanged;
  final double? borderRadius;
  final double? height;
  final Color? backgroundColor;

  @override
  Widget? builder() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: height,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              // boxShadow: const [
              //   BoxShadow(
              //     color: Colors.grey,
              //     offset: Offset(1, 1),
              //     blurRadius: 3,
              //     spreadRadius: 0,
              //   ),
              // ],
              color: backgroundColor,
              border: Border.all(
                width: AppSizes.getPhoneSize(1.7),
                color: AppColors.dividerColor,
              ),
              borderRadius: BorderRadius.all(Radius.circular(borderRadius!))),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              dropdownColor: AppColors.bodyColor,
              value: selectedValue.isEmpty
                  ? (list.isNotEmpty ? list[0] : selectedValue)
                  : selectedValue,
              isExpanded: true,
              isDense: true,
              icon: Padding(
                  padding: EdgeInsets.only(
                    right: AppSizes.getPhoneSize(2),
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: AppSizes.getPhoneSize(32),
                    color: AppColors.blackColor,
                  )),
              items: list.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Column(
                    children: [
                      TextWidget(
                        context: context,
                        data: value.toString(),
                        fontSize: 18,
                      ),
                    ],
                  ),
                );
              }).toList(),
              selectedItemBuilder: (BuildContext context) {
                return list.map<Widget>(
                  (String value) {
                    return TextWidget(
                      context: context,
                      data: value.toString(),
                      fontSize: 18,
                      color: AppColors.blackColor,
                    );
                  },
                ).toList();
              },
              onChanged: (value) {
                onChanged(value);
              },
            ),
          ),
        ),
      ],
    );
  }
}
