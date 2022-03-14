import 'package:flutter/material.dart';

extension Media on BuildContext {
  MediaQueryData get media => MediaQuery.of(this);
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get statusBarHeight => MediaQuery.of(this).padding.top;
  double get bottomBarHeight => MediaQuery.of(this).padding.bottom;
  double get safeAreaHeight => height - statusBarHeight - bottomBarHeight;
  double get safeAreaWidth => width;

  bool get isTabletSize => media.size.shortestSide >= 768;
}
