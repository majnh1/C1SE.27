import 'package:capstone_flutter/resources/app_color.dart';
import 'package:capstone_flutter/resources/app_style.dart';
import 'package:flutter/material.dart';

class ResetForm extends StatefulWidget {
  const ResetForm({super.key});

  @override
  State<ResetForm> createState() => _ResetFormState();
}

class _ResetFormState extends State<ResetForm> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.grey.withOpacity(0.4),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      child: TextField(
        controller: emailController,
        style: AppStyle.h16Normal.copyWith(color: AppColor.brown),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          border: InputBorder.none,
          hintText: 'Email',
          hintStyle: TextStyle(color: AppColor.grey),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.grey),
          ),
        ),
      ),
    );
  }
}
