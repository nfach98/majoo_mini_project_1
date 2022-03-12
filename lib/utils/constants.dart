import 'package:flutter/material.dart';

// Colors
Color colorPrimary = Color(0xFF416CE1);
Color colorAccent = Color(0xFFA0B3E2);

Color colorBackground = Color(0xFFFFFFFF);
Color colorBackground2 = Color(0xFF7694E2);

Color colorIconBnvActive = Color(0xFF6788E2);
Color colorBackgroundBnv = Color(0xFF6E8DDD);
Color colorBackgroundBnv2 = Color(0xFF5C7BCD);

Color colorBackgroundSearchBar = Color(0xFFEFF2FF);

Color colorIconStar = Color(0xFFF5B901);

Color colorTextSearchBar = Color(0xFF8691B3);
Color colorTextHeading1Dark = Color(0xFF000000);
Color colorTextHeading1Light = Color(0xFFFFFFFF);
Color colorTextHeading2 = Color(0xFF313A3F);
Color colorTextBody1 = Color(0xFFA6A8AA);
Color colorTextBody2 = Color(0xFF283238);
Color colorTextBody3 = Color(0xFF7291E2);

Color colorTextButtonLight = Color(0xFFFFFFFF);
Color colorTextButtonDark = Color(0xFF6688E2);

// Gradient
LinearGradient linearGradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [colorAccent, colorPrimary]
);
RadialGradient radialGradient = RadialGradient(
  colors: [colorAccent, colorPrimary]
);

LinearGradient backgroundGradient = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [colorBackground2, colorBackground]
);

// Text styles
TextStyle textStyleSearchBar = TextStyle(
  color: colorTextSearchBar
);

TextStyle textStyleHeading1Light = TextStyle(
  color: colorTextHeading1Light,
  fontWeight: FontWeight.bold
);
TextStyle textStyleHeading1Dark = TextStyle(
  color: colorTextHeading1Dark,
  fontWeight: FontWeight.bold,
  fontSize: 24
);
TextStyle textStyleHeading2 = TextStyle(
  color: colorTextHeading2,
  fontWeight: FontWeight.bold,
  fontSize: 18
);

TextStyle textStyleBody1 = TextStyle(
  color: colorTextBody1,
  fontSize: 16
);
TextStyle textStyleBody2 = TextStyle(
  color: colorTextBody2
);
TextStyle textStyleBody3 = TextStyle(
  color: colorTextBody3,
  fontSize: 16,
  fontWeight: FontWeight.bold
);

TextStyle textStyleButtonLight = TextStyle(
  color: colorTextButtonLight
);
TextStyle textStyleButtonDark = TextStyle(
  color: colorTextButtonDark
);