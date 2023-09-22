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
    return Column(
      children: [
        // AppBarWidget(context: context, onClick: (){}),
        DoctorProfileWidget(
          imageUrl: '',
          onTap: (){},
        ),
        TextWidget(data: 'data', context: context)
        
        ],
    );
  }
}
