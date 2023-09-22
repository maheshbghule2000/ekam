import 'package:classcheck/consts/app_sizes.dart';
import 'package:classcheck/views/widgets/appbar_widet.dart';
import 'package:flutter/material.dart';

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
          padding: EdgeInsets.only(
              top: AppSizes.getPhoneSize(30), left: AppSizes.getPhoneSize(30)),
          child: Column(
            children: [
              AppBarWidget(
                context: context,
                onClick: () {},
                data: 'Book Appointment ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
