import 'package:flutter/widgets.dart';

/// Utility to store screen size and provide proportionate sizing.
/// Initialize once in the first screen's build: `SizeConfig.init(context);`
class SizeConfig {
  SizeConfig._();

  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late Orientation orientation;

  /// Initialize SizeConfig using the provided [context].
  /// Call this in the `build` of the app's first screen (after MaterialApp).
  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

/// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  final double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

/// Get the proportionate width as per screen size
double getProportionateScreenWidth(double inputWidth) {
  final double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
