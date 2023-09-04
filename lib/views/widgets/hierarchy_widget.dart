import 'package:classcheck/consts/app_sizes.dart';
import 'package:classcheck/views/widgets/sized_box_widget.dart';
import 'package:classcheck/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';

class HierarchyWidget extends StatelessWidget {
  const HierarchyWidget(
      {required this.context,
      this.imageUrl,
      this.name,
      this.height,
      this.width,
      this.Position,
      super.key});
  final BuildContext context;
  final String? imageUrl;
  final String? name;
  final String? Position;
  final bool? height;
  final bool? width;

  @override
  Widget build(BuildContext context) {
   
    
    
    

    return Column(
      children: [
        Container(
          height: AppSizes.getPhoneSize(90),
          width: AppSizes.getPhoneSize(90),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: imageUrl != null
                  ? NetworkImage(imageUrl!)
                  : NetworkImage(
                      'https://images.unsplash.com/photo-1631947430066-48c30d57b943?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=416&q=80'),
            ),
          ),
        ),
        TextWidget(
          context: context,
          data: name ?? 'data not found',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor,
        ),
        SizedBoxWidget(
          height: 3,
        ),
        TextWidget(
          context: context,
          data: Position ?? 'HR Assistant',
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: AppColors.radioText,
        ),
      ],
    );
  }
}
