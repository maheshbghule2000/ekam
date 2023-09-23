import 'package:classcheck/consts/app_colors.dart';
import 'package:classcheck/consts/app_sizes.dart';
import 'package:classcheck/views/screens/doctor_details/doctor_details.dart';
import 'package:classcheck/views/screens/start/start_screen.dart';
import 'package:classcheck/views/widgets/custom_button_widget.dart';
import 'package:classcheck/views/widgets/select_package_widget.dart';
import 'package:classcheck/views/widgets/time_picker_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/sized_box_widget.dart';
import '../../widgets/text_widget.dart';

class SelectPackageScreen extends StatefulWidget {
  const SelectPackageScreen({super.key});

  @override
  State<SelectPackageScreen> createState() => _SelectPackageScreenState();
}

class _SelectPackageScreenState extends State<SelectPackageScreen> {
  bool selectedValue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.containerColor,
        body: Padding(
          padding: EdgeInsets.only(
            top: AppSizes.getPhoneSize(50),
            left: AppSizes.getPhoneSize(30),
            right: AppSizes.getPhoneSize(30),
            bottom: AppSizes.getPhoneSize(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _selectedWidget(context),
              SizedBoxWidget(
                height: AppSizes.getPhoneSize(30),
              ),
              _drapdownWidget(context),
              _cardWidget(context),

              //  SizedBoxWidget(height: 60,),
              Spacer(),

              _nextButtonWidget(context),
            ],
          ),
        ),
      ),
    );
  }

  _selectedWidget(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
               Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            WelcomeScreen(),
                      ),
                    );
          },
          child: Container(
            width: AppSizes.getPhoneSize(50),
            height: AppSizes.getPhoneSize(50),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.grayColor,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBoxWidget(
          width: AppSizes.getPhoneSize(60),
        ),
        TextWidget(
            context: context,
            color: AppColors.blackColor,
            fontSize: AppSizes.getPhoneSize(25),
            data: 'select package'),
      ],
    );
  }

  _drapdownWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          context: context,
          data: 'Select Duration',
          color: AppColors.blackColor,
          fontSize: AppSizes.getPhoneSize(30),
        ),
        SizedBoxWidget(
          height: AppSizes.getPhoneSize(10),
        ),
        DropdownWithIcons(),
        SizedBoxWidget(
          height: AppSizes.getPhoneSize(10),
        ),
      ],
    );
  }
}

class DropdownWithIcons extends StatefulWidget {
  @override
  _DropdownWithIconsState createState() => _DropdownWithIconsState();
}

class _DropdownWithIconsState extends State<DropdownWithIcons> {
  String selectedValue = '30 minute';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      focusColor: AppColors.blackColor,
 
      value: selectedValue,
      onChanged: (newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
      decoration: InputDecoration(
        fillColor: AppColors.DarkGrayColor,
        hoverColor: AppColors.containerColor,
        prefixIcon: Icon(Icons.access_alarm), // Prefix icon
focusColor: AppColors.DarkGrayColor,
        border: OutlineInputBorder(),
      ),
      items: <String>[
        '30 minute',
        '40 minute',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

_cardWidget(
  BuildContext context,
) {
  return Column(
    children: [
      SelectPackageWidget(
        iconData: Icons.message,
        package: 'package with doctor ',
        color: AppColors.greenColor,
        massege: 'messaging',
        //  selectRadio: Radio(
        //                         value: true,
        //                         groupValue:'',
        //                         activeColor: AppColors.DarkGrayColor,
        //                         onChanged: (String? selectedValue) {

        //                         },
        //                       ),
      ),
      SelectPackageWidget(
        iconData: Icons.call,
        package: ' Voice call with doctor',
        color: AppColors.greenColor,
        massege: 'Voice call',
      ),
      SelectPackageWidget(
        iconData: Icons.video_call,
        package: 'Vedio call with doctor ',
        color: AppColors.greenColor,
        massege: 'Vedio call',
      ),
      SelectPackageWidget(
        iconData: Icons.person,
        package: 'In person with doctor',
        color: AppColors.greenColor,
        massege: 'In person',
      ),
    ],
  );
}

_nextButtonWidget(BuildContext context) {
  return Column(
    children: [
      Divider(),
      SizedBoxWidget(
        height: 20,
      ),
      CustomButtonWidget(
          context: context,
          height: 50,
          width: double.infinity,
          backgroundColor: AppColors.buttonColor,
          color: AppColors.whiteColor,
          borderRadius: 50,
          fontWeight: FontWeight.bold,
          fontSize: AppSizes.getPhoneSize(20),
          data: 'Next',
        
          onClick: () {}),
    ],
  );
}
