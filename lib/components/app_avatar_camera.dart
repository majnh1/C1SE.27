import 'dart:io';
import 'package:capstone_flutter/components/gen/assets_gen.dart';
import 'package:capstone_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';

class AppAvatar1 extends StatelessWidget {
  const AppAvatar1({
    super.key,
    this.avatar,
    this.radius = 24.0,
    this.isActive = false,
  });

  final String? avatar;
  final double radius;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundImage: avatar == null
              ? Assets.images.defaultAvatar.provider()
              : FileImage(File(avatar!)),
        ),
        Positioned(
          right: 0.0,
          bottom: 0.0,
          child: avatar == null
              ? Container(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColor.pink),
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    size: 13.0,
                    color: AppColor.pink,
                  ),
                )
              : Container(
                  width: radius / 1.8,
                  height: radius / 1.8,
                  decoration: BoxDecoration(
                      color: isActive ? AppColor.green : AppColor.orange,
                      border: Border.all(color: AppColor.white, width: 1.8),
                      shape: BoxShape.circle),
                ),
        ),
      ],
    );
  }
}
