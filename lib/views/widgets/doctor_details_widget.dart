import 'package:cached_network_image/cached_network_image.dart';
import 'package:classcheck/consts/app_colors.dart';
import 'package:classcheck/views/widgets/sized_box_widget.dart';
import 'package:classcheck/views/widgets/text_widget.dart';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorProfileWidget extends StatelessWidget {
  final String imageUrl;
  final String? doctorName;
  final String? location;
  final String? speciality;
  final void Function()? onTap;

  const DoctorProfileWidget({
    Key? key,
    this.doctorName,
    this.location,
    this.speciality,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: 95.w,
              height: 95.h,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: AppColors.bgButtonColor,
                ),
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(imageUrl),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
             
              right: 0,
              child: IconButton(
                icon: Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 30.h,
                ),
                onPressed: onTap,
              ),
            ),
          ],
        ),
        SizedBoxWidget(
          width: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBoxWidget(
              height: 10,
            ),
            TextWidget(
              context: context,
              data: doctorName??'Dr. Jonny Wilson',
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            SizedBoxWidget(
              height: 5,
            ),
            TextWidget(
              context: context,
              data: speciality ??'Dentist',
              color: AppColors.grayColor,
              fontSize: 20,
            ),
            SizedBoxWidget(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.blue,
                  size: 15.h,
                ),
                    SizedBoxWidget(width: 2,),
                TextWidget(
                  context: context,
                  data: location??'New York,United State',
                  fontSize: 15,
                  color: AppColors.grayColor,
                ),
               SizedBoxWidget(width: 2,),
                const Icon(Icons.flag, size: 20, color: Colors.blue)
              ],
            )
          ],
        ),
      ],
    );
  }
}
