import 'dart:io';
import 'package:capstone_flutter/components/gen/assets_gen.dart';
import 'package:flutter/material.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({
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
      ],
    );
  }
}
