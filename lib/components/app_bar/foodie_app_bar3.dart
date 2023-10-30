import 'dart:io';
import 'dart:math' as math;
import 'package:capstone_flutter/models/user_model.dart';
import 'package:capstone_flutter/pages/information_page.dart';
import 'package:capstone_flutter/resources/app_color.dart';
import 'package:capstone_flutter/resources/app_style.dart';
import 'package:capstone_flutter/services/share_prefs.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class FoodieAppBar3 extends StatefulWidget implements PreferredSizeWidget {
  FoodieAppBar3({
    super.key,
    this.leftPressed,
    Icon? icon,
    required this.title,
    this.color,
  }) : icon = icon ??
            Icon(
              Icons.arrow_back_ios_new,
              size: 22.0,
              color: AppColor.brown.withOpacity(0.68),
            );

  final Function()? leftPressed;
  final Icon icon;
  final String title;
  final Color? color;

  @override
  State<FoodieAppBar3> createState() => _FoodieAppBar3State();

  @override
  Size get preferredSize => const Size.fromHeight(86.0);
}

class _FoodieAppBar3State extends State<FoodieAppBar3> {
  SharedPrefs prefs = SharedPrefs();
  String? avatar;

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
    return Container(
      color: widget.color,
      padding: const EdgeInsets.symmetric(horizontal: 15.0).copyWith(
          top: MediaQuery.of(context).padding.top + 6.0, bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () =>
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => InformationPage(
                          user: UserModel(),
                        ))),
            child: Transform.rotate(
              angle: 45 * math.pi / 180,
              child: Container(
                padding: const EdgeInsets.all(6.8),
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColor.shadow,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 4.0,
                    ),
                  ],
                ),
                child: Transform.rotate(
                  angle: -45 * math.pi / 180,
                  child: widget.icon,
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                widget.title,
                style: AppStyle.h22Normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
