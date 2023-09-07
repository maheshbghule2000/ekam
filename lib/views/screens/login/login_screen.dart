import 'package:classcheck/consts/app_colors.dart';
import 'package:classcheck/consts/app_images.dart';
import 'package:classcheck/consts/app_sizes.dart';
import 'package:classcheck/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.newBodyColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
            top: AppSizes.getPhoneSize(20),
            left: AppSizes.getPhoneSize(20),
            right: AppSizes.getPhoneSize(20)),
        child: Column(
          children: [
            _backIconWidget(context),
            _loginIconTextWidget(context),
          ],
        ),
      )),
    );
  }

  _backIconWidget(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.arrow_back_rounded,
          color: AppColors.containerColor,
        )
      ],
    );
  }

  _loginIconTextWidget(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.persionImg,
          height: 200,
        ),
        TextWidget(context: context, data: 'data')
      ],
    );
  }
}
