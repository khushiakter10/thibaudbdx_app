/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrowtir.svg
  String get arrowtir => 'assets/icons/arrowtir.svg';

  /// File path: assets/icons/arrwback.svg
  String get arrwback => 'assets/icons/arrwback.svg';

  /// File path: assets/icons/arrwbackkhoyri.svg
  String get arrwbackkhoyri => 'assets/icons/arrwbackkhoyri.svg';

  /// File path: assets/icons/arrwblack.svg
  String get arrwblack => 'assets/icons/arrwblack.svg';

  /// File path: assets/icons/bacbutton.svg
  String get bacbutton => 'assets/icons/bacbutton.svg';

  /// File path: assets/icons/blucircleavatar.svg
  String get blucircleavatar => 'assets/icons/blucircleavatar.svg';

  /// File path: assets/icons/calendar.svg
  String get calendar => 'assets/icons/calendar.svg';

  /// File path: assets/icons/circle (2).svg
  String get circle2 => 'assets/icons/circle (2).svg';

  /// File path: assets/icons/clock.svg
  String get clock => 'assets/icons/clock.svg';

  /// File path: assets/icons/clockiconblue.svg
  String get clockiconblue => 'assets/icons/clockiconblue.svg';

  /// File path: assets/icons/cross.svg
  String get cross => 'assets/icons/cross.svg';

  /// File path: assets/icons/dot.svg
  String get dot => 'assets/icons/dot.svg';

  /// File path: assets/icons/edit.svg
  String get edit => 'assets/icons/edit.svg';

  /// File path: assets/icons/logoarrwback.svg
  String get logoarrwback => 'assets/icons/logoarrwback.svg';

  /// File path: assets/icons/main_logo.svg
  String get mainLogo => 'assets/icons/main_logo.svg';

  /// File path: assets/icons/mapicon.svg
  String get mapicon => 'assets/icons/mapicon.svg';

  /// File path: assets/icons/men.svg
  String get men => 'assets/icons/men.svg';

  /// File path: assets/icons/message.svg
  String get message => 'assets/icons/message.svg';

  /// File path: assets/icons/noteicon.svg
  String get noteicon => 'assets/icons/noteicon.svg';

  /// File path: assets/icons/noteiconblue.svg
  String get noteiconblue => 'assets/icons/noteiconblue.svg';

  /// File path: assets/icons/pluseicon.svg
  String get pluseicon => 'assets/icons/pluseicon.svg';

  /// File path: assets/icons/threedot.svg
  String get threedot => 'assets/icons/threedot.svg';

  /// List of all assets
  List<String> get values => [arrowtir, arrwback, arrwbackkhoyri, arrwblack, bacbutton, blucircleavatar, calendar, circle2, clock, clockiconblue, cross, dot, edit, logoarrwback, mainLogo, mapicon, men, message, noteicon, noteiconblue, pluseicon, threedot];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/calendar.png
  AssetGenImage get calendar => const AssetGenImage('assets/images/calendar.png');

  /// File path: assets/images/dataimport.png
  AssetGenImage get dataimport => const AssetGenImage('assets/images/dataimport.png');

  /// File path: assets/images/docs.png
  AssetGenImage get docs => const AssetGenImage('assets/images/docs.png');

  /// File path: assets/images/faq.png
  AssetGenImage get faq => const AssetGenImage('assets/images/faq.png');

  /// File path: assets/images/map.png
  AssetGenImage get map => const AssetGenImage('assets/images/map.png');

  /// File path: assets/images/piza.png
  AssetGenImage get piza => const AssetGenImage('assets/images/piza.png');

  /// File path: assets/images/piza2.png
  AssetGenImage get piza2 => const AssetGenImage('assets/images/piza2.png');

  /// File path: assets/images/product.png
  AssetGenImage get product => const AssetGenImage('assets/images/product.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/search-normal.png
  AssetGenImage get searchNormal => const AssetGenImage('assets/images/search-normal.png');

  /// File path: assets/images/setting.png
  AssetGenImage get setting => const AssetGenImage('assets/images/setting.png');

  /// File path: assets/images/steponescreen.png
  AssetGenImage get steponescreen => const AssetGenImage('assets/images/steponescreen.png');

  /// File path: assets/images/subscription.png
  AssetGenImage get subscription => const AssetGenImage('assets/images/subscription.png');

  /// File path: assets/images/support.png
  AssetGenImage get support => const AssetGenImage('assets/images/support.png');

  /// File path: assets/images/togs.png
  AssetGenImage get togs => const AssetGenImage('assets/images/togs.png');

  /// List of all assets
  List<AssetGenImage> get values => [calendar, dataimport, docs, faq, map, piza, piza2, product, profile, searchNormal, setting, steponescreen, subscription, support, togs];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/loading.json
  String get loading => 'assets/lottie/loading.json';

  /// File path: assets/lottie/n_loading.json
  String get nLoading => 'assets/lottie/n_loading.json';

  /// List of all assets
  List<String> get values => [loading, nLoading];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
