import 'package:capstone_flutter/pages/auth/login_page.dart';
import 'package:capstone_flutter/pages/auth/reset_page.dart';
import 'package:capstone_flutter/pages/cart/widget/primary_button.dart';
import 'package:capstone_flutter/resources/app_color.dart';
import 'package:capstone_flutter/resources/app_style.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 200.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Reset Password',
                style: AppStyle.h24Normal.copyWith(
                  color: AppColor.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Please enter your email address',
                style: AppStyle.h16Medium
                    .copyWith(fontWeight: FontWeight.w600, color: AppColor.red),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const ResetForm(),
            const SizedBox(
              height: 40.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const PrimaryButton(buttonText: 'Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}
