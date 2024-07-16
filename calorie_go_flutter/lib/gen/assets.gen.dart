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

  /// Directory path: assets/images/sample
  $AssetsImagesSampleGen get sample => const $AssetsImagesSampleGen();

  /// Directory path: assets/images/ticket
  $AssetsImagesTicketGen get ticket => const $AssetsImagesTicketGen();

  /// Directory path: assets/images/top
  $AssetsImagesTopGen get top => const $AssetsImagesTopGen();
}

class $AssetsImagesSampleGen {
  const $AssetsImagesSampleGen();

  /// File path: assets/images/sample/sample_image.jpg
  AssetGenImage get sampleImage =>
      const AssetGenImage('assets/images/sample/sample_image.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [sampleImage];
}

class $AssetsImagesTicketGen {
  const $AssetsImagesTicketGen();

  /// File path: assets/images/ticket/beard.jpeg
  AssetGenImage get beard =>
      const AssetGenImage('assets/images/ticket/beard.jpeg');

  /// File path: assets/images/ticket/clothes.jpeg
  AssetGenImage get clothes =>
      const AssetGenImage('assets/images/ticket/clothes.jpeg');

  /// File path: assets/images/ticket/hat.jpeg
  AssetGenImage get hat => const AssetGenImage('assets/images/ticket/hat.jpeg');

  /// File path: assets/images/ticket/present_icon.jpg
  AssetGenImage get presentIcon =>
      const AssetGenImage('assets/images/ticket/present_icon.jpg');

  /// File path: assets/images/ticket/shoes.jpeg
  AssetGenImage get shoes =>
      const AssetGenImage('assets/images/ticket/shoes.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [beard, clothes, hat, presentIcon, shoes];
}

class $AssetsImagesTopGen {
  const $AssetsImagesTopGen();

  /// File path: assets/images/top/top_image.webp
  AssetGenImage get topImage =>
      const AssetGenImage('assets/images/top/top_image.webp');

  /// File path: assets/images/top/top_logo.png
  AssetGenImage get topLogo =>
      const AssetGenImage('assets/images/top/top_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [topImage, topLogo];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
