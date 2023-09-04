import 'package:flutter/material.dart';

import '../consts/app_enum.dart';
import '../consts/app_images.dart';


String fetchIconFromAsset(assetName) {
  if (assetName == AppIcons.grid.name) {
    return AppImages.gridSvg;
  } else if (assetName == AppIcons.search.name) {
    return AppImages.searchIcon;
  } else if (assetName == AppIcons.funnel.name) {
  return AppImages.funnelIcon;
  }
  else {
  return "";
  }
}

void hideKeyboard(BuildContext context) {
  FocusManager.instance.primaryFocus?.unfocus();
}

extension StringExtension on String {
  String truncateTo(int maxLength) =>
      (this.length <= maxLength) ? this : '${this.substring(0, maxLength)}...';
}
extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
