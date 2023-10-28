import 'package:capstone_flutter/resources/app_color.dart';
import 'package:capstone_flutter/resources/app_style.dart';
import 'package:flutter/material.dart';

class AppTextFieldComment extends StatelessWidget {
  const AppTextFieldComment({
    super.key,
    this.controller,
    required this.hintext,
    this.borderRadius = const BorderRadius.all(Radius.circular(30.0)),
    this.textInputAction,
  });

  final TextEditingController? controller;
  final String hintext;
  final BorderRadius borderRadius;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 54, 51, 51).withOpacity(0.4),
        borderRadius: borderRadius,
      ),
      child: TextField(
        controller: controller,
        textInputAction: textInputAction,
        style: AppStyle.h16Normal.copyWith(color: AppColor.brown),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
          border: InputBorder.none,
          hintText: hintext,
          hintStyle: AppStyle.h16Normal.copyWith(
            color: AppColor.black,
          ),
        ),
      ),
    );
  }
}
