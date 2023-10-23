import 'dart:io';

import 'package:capstone_flutter/components/app_avartar.dart';
import 'package:capstone_flutter/components/app_bar/foodie_app_bar1.dart';
import 'package:capstone_flutter/components/button/app_elevated_button.dart';
import 'package:capstone_flutter/components/gen/assets_gen.dart';
import 'package:capstone_flutter/pages/auth/edit_page.dart';
import 'package:capstone_flutter/resources/app_color.dart';
import 'package:capstone_flutter/services/share_prefs.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({
    super.key,
  });

  @override
  State<InformationPage> createState() => _InformationPageState();

  Size get preferredSize => const Size.fromHeight(86.0);
}

class _InformationPageState extends State<InformationPage> {
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
      appBar: FoodieAppBar1(
        title: 'Thông Tin Cá Nhân         ',
      ),
      body: Stack(
        children: [
          Positioned(
            left: 30.0,
            top: 30.0,
            child: GestureDetector(
              child: AppAvatar(
                radius: 30.0,
                avatar: avatar,
                isActive: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Vo Duc Minh',
                      style: TextStyle(
                        fontSize: 20.0,
                        height: 10.0,
                        color: AppColor.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 170.0,
                    ),
                    const Image(
                      image: AssetImage('assets/images/Vector.png'),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    AppElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const EditPage(
                                    icon: Icon(Icons.logout),
                                  )),
                        );
                      },
                      text: 'Edit',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppElevatedButton.outline(
                      text: 'Người Theo Dõi',
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    AppElevatedButton.outline(
                      text: 'Đang Theo Dõi',
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    AppElevatedButton.outline(
                      text: 'Món Ăn',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Positioned(
                  child: Text(
                    'Món ăn của bạn',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: AppColor.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Divider(
                  height: 30.0,
                  thickness: 1.2,
                  indent: 20.0,
                  endIndent: 20.0,
                  color: AppColor.grey,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 10.0,
                    ),
                    Image.asset(
                      Assets.images.cakho.path,
                      width: 120.0,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Image.asset(
                      Assets.images.comchien.path,
                      width: 120.0,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Image.asset(
                      Assets.images.thitkho.path,
                      width: 120.0,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Cá Kho',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: AppColor.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Cơm chiên',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: AppColor.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Thịt Kho',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: AppColor.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}