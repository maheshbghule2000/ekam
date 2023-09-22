import 'package:classcheck/consts/app_sizes.dart';
import 'package:classcheck/views/widgets/appbar_widet.dart';
import 'package:classcheck/views/widgets/text_widget.dart';

import 'package:flutter/material.dart';

import '../../widgets/doctor_details_widget.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen({super.key});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(top: AppSizes.getPhoneSize(30),left: AppSizes.getPhoneSize(20)),
          child: Column(
            children: [
              AppBarWidget(context: context,
              data: 'Book Appointment',
               onClick: (){}),
              DoctorProfileWidget(
                imageUrl: 'https://hireforekam.s3.ap-south-1.amazonaws.com/doctors/1-Doctor.png',
                onTap: (){},
              ),
              TextWidget(data: 'data', context: context)
              
              ],
          ),
        ),
      ),
    );
  }
}
