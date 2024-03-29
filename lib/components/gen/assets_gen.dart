/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo_1.png
  AssetGenImage get logo1 => const AssetGenImage('assets/images/logo_1.png');

  /// File path: assets/images/logo_2.png
  AssetGenImage get logo2 => const AssetGenImage('assets/images/logo_2.png');

  /// File path: assets/images/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.png');

  /// File path: assets/images/default_avatar.png
  AssetGenImage get defaultAvatar =>
      const AssetGenImage('assets/images/default_avatar.png');

  /// File path: assets/images/cakho.png
  AssetGenImage get cakho => const AssetGenImage('assets/images/cakho.png');

  /// File path: assets/images/comchien.png
  AssetGenImage get comchien =>
      const AssetGenImage('assets/images/comchien.png');

  /// File path: assets/images/thitkho.png
  AssetGenImage get thitkho => const AssetGenImage('assets/images/thitkho.png');

  /// File path: assets/images/bigThitkho.png
  AssetGenImage get bigThitkho =>
      const AssetGenImage('assets/images/bigCakho.png');

  /// File path: assets/images/bigCakho.png
  AssetGenImage get bigCakho =>
      const AssetGenImage('assets/images/bigCakho.png');

  /// File path: assets/images/bigCakho.png
  AssetGenImage get bigComchien =>
      const AssetGenImage('assets/images/bigComchien.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        logo1,
        logo2,
        background,
        defaultAvatar,
        cakho,
        comchien,
        thitkho,
        bigThitkho,
        bigCakho,
        bigComchien,
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
