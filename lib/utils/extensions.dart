import 'package:flutter/material.dart';

extension Media on BuildContext {
  MediaQueryData get media => MediaQuery.of(this);
  double get width => media.size.width;
  double get height => media.size.height;
  double get statusBarHeight => media.padding.top;
  double get bottomBarHeight => media.padding.bottom;
  double get safeAreaHeight => height - statusBarHeight - bottomBarHeight;
  double get safeAreaWidth => width;

  bool get isTabletSize => media.size.shortestSide >= 768;
}
