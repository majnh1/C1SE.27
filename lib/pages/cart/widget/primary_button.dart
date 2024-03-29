import 'package:capstone_flutter/resources/app_color.dart';
import 'package:capstone_flutter/resources/app_style.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  const PrimaryButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.08,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: AppColor.red),
      child: Text(
        buttonText,
        style: AppStyle.h16Medium.copyWith(color: AppColor.white),
      ),
    );
  }
}
