
import 'package:classcheck/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import '../../consts/app_sizes.dart';
import '../../consts/app_strings.dart';

class ListTileWidget extends GetResponsiveView {
  ListTileWidget({
    Key? key,
    required this.leadingIcon,
    required this.data,
    required this.trailingIcon,
    this.iconLabel,
    this.onTap,
    required this.context,
    this.leadingIconheight = 18,
    this.leadingIconWidth = 18,
    this.trailingIconheight = 18,
    this.trailingIconWidth = 18,
    this.index,
    this.isConfigurable = false,
    this.onTrailingIconClick,
  }) : super(key: key);

  final String leadingIcon;
  final String data;
  final String trailingIcon;
  final BuildContext context;
  final String? iconLabel;
  final double? leadingIconWidth;
  final double? leadingIconheight;
  final double? trailingIconWidth;
  final double? trailingIconheight;
  final void Function()? onTap;
  final int? index;
  final bool? isConfigurable;
  final Function? onTrailingIconClick;

  @override
  Widget? builder() {
    return ListTile(
      tileColor: Theme.of(context).cardColor,
      title: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                      height: AppSizes.getPhoneSize(18),
                  child: SvgPicture.asset(
                    leadingIcon,
                    color: Theme.of(context).primaryColor,
                    width: AppSizes.getPhoneSize(leadingIconWidth!)  ,
                    height: AppSizes.getPhoneSize(leadingIconWidth!),
                  ),
                ),
                SizedBox(
                  width: AppSizes.getPhoneSize(15)
                ),
                SizedBox(
                  width:  AppSizes.getPhoneSize(240),
                  // child: TextWidgetWeb(
                  //   data: data,
                  //   color: Theme.of(context).primaryColor,
                  //   fontSize: 16,
                  // ),
                ),
              ],
            ),
            Row(
              children: [
                isConfigurable!
                    ? InkWell(
                  onTap: onTap,
                  mouseCursor: SystemMouseCursors.click,
                  child: TextWidget(
                    context: context,
                    data: AppStrings.name,
                    color: Theme.of(context).primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                )
                    : Container(),
                SizedBox(
                  width: AppSizes.getPhoneSize(100),
                ),
                screen.isDesktop
                    ? Padding(
                  padding: EdgeInsets.only(
                      right: AppSizes.getPhoneSize(19.53)
                          ),
                  child: Container(
                    width: AppSizes.getPhoneSize(106),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                               AppSizes.getPhoneSize(20)
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        // left: AppSizes.getWebSize(15),
                        top: AppSizes.getPhoneSize(11),
                        bottom: AppSizes.getPhoneSize(11)
                      ),
                      // right: AppSizes.getWebSize(15)),
                      child: Center(
                        child: TextWidget(
                          context: context,
                          data: AppStrings.name,
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                )
                    : Container(),
                SizedBox(
                  width: AppSizes.getWebSize(26),
                ),
                SizedBox(
                  // width: AppSizes.getWebSize(50),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            onTrailingIconClick!();
                          },
                          child:  SvgPicture.asset(
                            trailingIcon,
                            color: Theme.of(context).primaryColor,
                            width:AppSizes.getPhoneSize(trailingIconWidth!),
                            height: AppSizes.getPhoneSize(trailingIconheight!)

                          )),

                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
