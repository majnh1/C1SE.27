import 'package:capstone_flutter/components/button/app_elevated_button.dart';
import 'package:capstone_flutter/components/gen/assets_gen.dart';
import 'package:capstone_flutter/pages/auth/login_page.dart';
import 'package:capstone_flutter/pages/auth/register_page.dart';
import 'package:capstone_flutter/resources/app_color.dart';
import 'package:capstone_flutter/resources/app_style.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final textStyle = AppStyle.h14Medium.copyWith(color: AppColor.brown);

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            child: Image.asset(Assets.images.logo2.path, width: size.width),
          ),
          Positioned(
            left: 20.0,
            top: size.height / 2.0,
            right: 20.0,
            child: Column(
              children: [
                const Text('Foodie Social', style: AppStyle.h32Normal),
                Text('Giao lưu, học hỏi, tiến bộ', style: textStyle),
              ],
            ),
          ),
          Positioned(
            left: 20.0,
            right: 20.0,
            bottom: 72.0,
            child: Column(
              children: [
                AppElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  text: 'Login',
                ),
                const SizedBox(height: 20.0),
                AppElevatedButton.outline(
                  onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                      (route) => false),
                  text: 'Sign up',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
