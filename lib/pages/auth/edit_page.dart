import 'dart:io';
import 'package:capstone_flutter/components/app_avartar.dart';
import 'package:capstone_flutter/components/app_bar/foodie_app_bar2.dart';
import 'package:capstone_flutter/components/app_dialog.dart';
import 'package:capstone_flutter/resources/app_color.dart';
import 'package:capstone_flutter/services/share_prefs.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage({
    super.key,
    required this.icon,
  });

  final Icon icon;

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  SharedPrefs prefs = SharedPrefs();
  String? avatar;

  Future<void> _pickAvatar() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (result == null) return;
    avatar = result.files.single.path!;
    prefs.saveAvatarPath(avatar ?? '');
  }

  void _getAvatar() {
    prefs.getAvatarPath().then((valueStr) {
      File(valueStr ?? '').exists().then((value) {
        if (value) {
          avatar = valueStr;
        } else {
          avatar = null;
        }
        setState(() {});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FoodieAppBar2(title: 'Edit        '),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25.0,
            ),
            GestureDetector(
              child: AppAvatar(
                avatar: avatar,
                isActive: true,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Vo Duc Minh',
              style: TextStyle(
                fontSize: 20.0,
                color: AppColor.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Row(
              children: [
                Icon(
                  Icons.info_outlined,
                  size: 30.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Complain',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: AppColor.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            const Row(
              children: [
                Icon(
                  Icons.info_outline_rounded,
                  size: 30.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: AppColor.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            GestureDetector(
              onTap: () => AppDialog.confirmExitApp(context),
              child: const Row(
                children: [
                  Icon(
                    Icons.logout,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: AppColor.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
