import 'package:capstone_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';

class AppBoxShadow {
  AppBoxShadow._();

  static const boxShadow = [
    BoxShadow(
      color: AppColor.shadow,
      offset: Offset(0.0, 3.0),
      blurRadius: 6.0,
    ),
  ];
}
