import 'dart:io';
import 'package:capstone_flutter/components/app_avartar.dart';
import 'package:capstone_flutter/components/app_bar/foodie_app_bar1.dart';
import 'package:capstone_flutter/components/button/app_elevated_button.dart';
import 'package:capstone_flutter/models/category_user.dart';
import 'package:capstone_flutter/models/foodie_model.dart';
import 'package:capstone_flutter/models/user_model.dart';
import 'package:capstone_flutter/pages/auth/edit_page.dart';
import 'package:capstone_flutter/pages/detail_foodie.dart';
import 'package:capstone_flutter/pages/follower_page.dart';
import 'package:capstone_flutter/pages/following_page.dart';
import 'package:capstone_flutter/resources/app_color.dart';
import 'package:capstone_flutter/services/share_prefs.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  SharedPrefs prefs = SharedPrefs();
  String? avatar;
  List<UserModel> user = [];

  @override
  void initState() {
    super.initState();
  }

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
        children: <Widget>[
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      // widget.user.name ?? '',
                      'Vo Duc Minh',
                      style: TextStyle(
                        fontSize: 20.0,
                        height: 10.0,
                        color: AppColor.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        const Image(
                          image: AssetImage('assets/images/Vector.png'),
                        ),
                        const SizedBox(
                          width: 15.0,
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FollowerPage()));
                      },
                      text: 'Người Theo Dõi',
                    ),
                    AppElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FollowingPage()));
                      },
                      text: 'Đang Theo Dõi',
                    ),
                    AppElevatedButton(
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
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Divider(
                  height: 30.0,
                  thickness: 1.2,
                  indent: 20.0,
                  endIndent: 20.0,
                  color: AppColor.orange,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(categories.length, (index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => detailFoodie(
                                    foodie: foods[index],
                                    user: users[index],
                                    category: categories[index],
                                  ),
                                ),
                              );
                            },
                            child: Image.asset(
                              categories[index].image ?? '',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            categories[index].name ?? '',
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      );
                    })
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
