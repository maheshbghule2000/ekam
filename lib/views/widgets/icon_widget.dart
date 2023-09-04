// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';

// import '../../consts/app_sizes.dart';
// import '../../utils/app_utils.dart';

// class IconWidget extends GetResponsiveView {
//   IconWidget({
//     Key? key,
//     required this.context,
//     required this.data,
//     this.width = 12,
//     this.height = 12,
//     this.color,
//     this.onClick,
//   }) : super(key: key);

//   final BuildContext context;
//   final String data;
//   final double width;
//   final double height;
//   final Color? color;
//   final Function? onClick;

//   @override
//   Widget? builder() {
//     return onClick != null
//         ? InkWell(
//             onTap: () {
//               onClick!();
//             },
//             child: _iconWidget(),
//           )
//         : _iconWidget();
//   }

//   _iconWidget() {
//     final isSvg = data.endsWith('.svg');    
//     return Container(
//         width: screen.isPhone
//             ? AppSizes.getPhoneSize(24)
//             : AppSizes.getWebSize(24),
//         height: screen.isPhone
//             ? AppSizes.getPhoneSize(24)
//             : AppSizes.getWebSize(24),
//         alignment: Alignment.center,
//         child: isSvg
//             ? SvgPicture.asset(
//                 fetchIconFromAsset(data),
//                 width: screen.isPhone
//                     ? AppSizes.getPhoneSize(width)
//                     : AppSizes.getWebSize(width),
//                 height: screen.isPhone
//                     ? AppSizes.getPhoneSize(height)
//                     : AppSizes.getWebSize(height),
//                 color: color ?? Theme.of(context).primaryColor,
//               )
//             : Image.asset(
//                 fetchIconFromAsset(data),
//                 width: screen.isPhone
//                     ? AppSizes.getPhoneSize(width)
//                     : AppSizes.getWebSize(width),
//                 height: screen.isPhone
//                     ? AppSizes.getPhoneSize(height)
//                     : AppSizes.getWebSize(height),
//                 color: color ?? Theme.of(context).primaryColor,
//               ));
//   }
// }






import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../consts/app_colors.dart';
import '../../consts/app_sizes.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({
    Key? key,
    required this.context,
    required this.data,
    this.width = 12,
    this.height = 12,
    this.color,
    this.onClick,
  }) : super(key: key);
  final BuildContext context;
  final String data;
  final double width;
  final double height;
  final Color? color;
  final Function? onClick;
  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {

  @override
  Widget build(BuildContext context) {
    return widget.onClick != null
        ? InkWell(
      onTap: () {
        widget.onClick!();
      },
      child: _iconWidget(),
    )
        : _iconWidget();
  }
  _iconWidget() {
    return Container(
      width: AppSizes.getPhoneSize(24),
      height: AppSizes.getPhoneSize(24),
      alignment: Alignment.center,
      child: SvgPicture.asset(
        widget.data,
        width:AppSizes.getPhoneSize(widget.width),
        height:  AppSizes.getPhoneSize(widget.height),
        color: AppColors.blackColor,
      ),
    );
  }
}
