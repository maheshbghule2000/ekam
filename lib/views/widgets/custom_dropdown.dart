// import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/src/simple/get_responsive.dart';
// import '../../consts/app_colors.dart';


// class DropDownWidget extends GetResponsiveView {
//   DropDownWidget({
//     Key? key,
//     required this.context,
//     required this.list,
//     required this.selectedValue,
//     this.height,
//     required this.onChanged,
//     this.backgroundColor = AppColors.whiteColor,
//     this.borderRadius = 10,
//   }) : super(key: key);

//   final BuildContext context;
//   final List<Item> list; // Change this to use the Item class
//   final double? height;
//   final Function onChanged;
//   final Color? backgroundColor;
//   final double? borderRadius;
//   final Item selectedValue; // Change this to use the Item class

//   @override
//   Widget? builder() {
//     return Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           DropdownButtonHideUnderline(
//             child: DropdownButton<Item>(
//               icon: SizedBox.shrink(),
//               value: selectedValue,
//               items: list.map(
//                 (Item value) {
//                   return DropdownMenuItem(
//                       value: value,
//                       child: TextWidget(
//                         fontSize: 15,
//                         context: context,
//                         data:
//                             value.shortCode == null || value.shortCode!.isEmpty
//                                 ? ""
//                                 : value.shortCode!,
//                       ));
//                 },
//               ).toList(),
//               selectedItemBuilder: (BuildContext context) {
//                 return list.map<Widget>(
//                   (Item value) {
//                     return Center(
//                       child: TextWidget(
//                         context: context,
//                         fontSize: 15,
//                         data:
//                             value.shortCode == null || value.shortCode!.isEmpty
//                                 ? ""
//                                 : value.shortCode!,
//                       ),
//                     );
//                   },
//                 ).toList();
//               },
//               onChanged: (Item? value) {
//                 log(value?.shortCode ?? "");
//                 onChanged(value);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
