import 'dart:io';

import 'package:capstone_flutter/components/app_avartar.dart';
import 'package:capstone_flutter/components/app_bar/foodie_app_bar3.dart';
import 'package:capstone_flutter/components/button/app_elevated_button.dart';
import 'package:capstone_flutter/pages/auth/edit_page.dart';
import 'package:capstone_flutter/resources/app_color.dart';
import 'package:capstone_flutter/services/share_prefs.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({super.key});

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
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
      appBar: FoodieAppBar3(
        title: 'Following       ',
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
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FollowingPage()));
                      },
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
                    'Người theo dõi',
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
                  height: 30.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  height: 40.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColor.white.withOpacity(0.98),
                    border: Border.all(color: AppColor.red.withOpacity(0.98)),
                    borderRadius: BorderRadius.circular(8.6),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColor.shadow,
                        offset: Offset(0.0, 3.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: const Text(
                    'Trần Văn Mạnh',
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 45.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  height: 40.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColor.white.withOpacity(0.98),
                    border: Border.all(color: AppColor.red.withOpacity(0.98)),
                    borderRadius: BorderRadius.circular(8.6),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColor.shadow,
                        offset: Offset(0.0, 3.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: const Text(
                    'Võ Đức Minh',
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
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
