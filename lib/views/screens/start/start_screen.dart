
// import 'package:lottie/lottie.dart';

import 'package:ekam/views/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../consts/app_colors.dart';
import '../../../consts/app_sizes.dart';
import '../../../consts/app_strings.dart';
import '../../../controllers/welcome_controller/welcome_controller.dart';
import '../../widgets/divider_widget.dart';
import '../../widgets/sized_box_widget.dart';
import '../../widgets/text_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}
final WelcomeController _welcomeController = Get.find();

class _WelcomeScreenState extends State<WelcomeScreen> {
  // @override
  // void initState() {
  //   super.initState();

   
  //   Future.delayed(const Duration(seconds: 3), () {
  //     _welcomeController.gotoDoctorDetailsScreen(context);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBoxWidget(
              height: 40,
            ),
            _welcomeTextWidget(context),
            _imageWidget(context),
            _bottomWidget(context),
            // _bottomWidget(context)
          ],
        ),
      )),
    );
  }

  _welcomeTextWidget(BuildContext context) {
    return Column(
      children: [
        TextWidget(
          data: 'Baap Doctor',
          fontWeight: FontWeight.bold,
          context: context,
          fontSize: 50,
        ),
        const SizedBox(
          height: 15,
        ),
        TextWidget(
          data: 'Remember Your Vision',
          context: context,
          fontSize: 15,
        )
      ],
    );
  }

_nextButtonWidget(BuildContext context){
  return CustomButtonWidget(context: context, data: 'Next',
  
  width: MediaQuery.of(context).size.width,
  height: 50,
  color: AppColors.whiteColor,
  backgroundColor: AppColors.buttonColor,
  borderRadius: 50,
   onClick: (){

 _welcomeController.gotoDoctorDetailsScreen(context);
  });
}
  // _imageWidget(BuildContext context) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       SizedBox(
  //     height: AppSizes.getPhoneSize(350),
  //         child: Center(
  //           child: Lottie.asset(
  //             'assets/images/animation_lmx68754.json',
  //           ),
  //         ),
  //       )
  //     ],
  //   );
  // }

  _imageWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: InkWell(
            onTap: (){
                Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const WelcomeScreen(),
                      ),
                    );
            },
            child: Image.asset(
              'assets/images/doctor.png',
            ),
          ),
        ),
 _nextButtonWidget(context),
        // Center(
        //   child: Image.network(
        //     'https://baap-app-images.s3.ap-south-1.amazonaws.com/scaled_doctor.png',
        //     height: 300,
        //     width: 300,
        //   ),
        // ),
      ],
    );
  }

  _bottomWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _dividerWidget(context),
          TextWidget(
            context: context,
            data: AppStrings.poweredBy,
            color: AppColors.lightDarkColor,
            fontSize: AppSizes.bodyLargeTextSizePhone.sp,
          ),
          TextWidget(
            context: context,
            data: AppStrings.companyName,
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor,
            fontSize: AppSizes.bodyLargeTextSizePhone.sp,
          ),
        ],
      ),
    );
  }

  _dividerWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        children: [
          DividerWidget(
            context: context,
            height: 2.h,
          ),
        ],
      ),
    );
  }

}
