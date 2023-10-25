import 'package:capstone_flutter/components/button/app_elevated_button.dart';
import 'package:capstone_flutter/resources/app_color.dart';
import 'package:capstone_flutter/resources/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppDialog {
  AppDialog._();
  static Future<void> confirmExitApp(BuildContext context) async {
    bool? status = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(''),
        content: Row(
          children: [
            Expanded(
              child: Text(
                'Do you want to exit app?',
                style: AppStyle.h20Normal.copyWith(color: AppColor.red),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppElevatedButton.smallOutline(
                onPressed: () => Navigator.pop(context, true),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                text: 'Yes',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: AppElevatedButton.smallOutline(
                  onPressed: () => Navigator.pop(context, false),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  text: 'No',
                ),
              ),
            ],
          ),
        ],
      ),
    );
    if (status ?? false) {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    }
  }
}
