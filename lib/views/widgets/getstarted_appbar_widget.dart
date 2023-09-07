
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../consts/app_colors.dart';
// import '../../consts/app_images.dart';
// import '../../consts/app_sizes.dart';

// class GetstartedAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const GetstartedAppBar({required this.context, super.key});
//   final BuildContext context;
//   // GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Positioned(
//           right: 0,
//           child: Container(
//             // height: 250,
//             // width: MediaQuery.of(context).size.width / 3,
//             child: SvgPicture.asset(
//               AppImages.gridSvg,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.only(
//               top: AppSizes.getPhoneSize(29),
//               left: AppSizes.getPhoneSize(38),
//               right: AppSizes.getPhoneSize(19)),
//           child: Row(
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Column(
//                 children: [
//                   Container(
//                     width: AppSizes.getPhoneSize(50),
//                     height: AppSizes.getPhoneSize(60),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                     child: Image.asset(
//                       AppImages.baapLogo,
//                       fit: BoxFit.cover,
//                     ),
//                   )
//                 ],
//               ),
//               SizedBoxWidget(
//                 width: 10,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextWidget(
//                     context: context,
//                     data: 'the baap company',
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.blackColor,
//                   ),
//                   SizedBoxWidget(
//                     height: 7,
//                   ),
//                   TextWidget(
//                     context: context,
//                     data: 'Software company',
//                     fontSize: 12,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.grayColor,
//                   ),
//                   SizedBoxWidget(
//                     height: 35,
//                   ),
//                   Divider(
//                     color: AppColors.dividerColor,
//                   )
//                   // DividerWidget(context: context),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => throw UnimplementedError();
// }
