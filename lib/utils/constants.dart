import 'package:flutter/material.dart';

// Colors
Color colorPrimary = const Color(0xFF416CE1);
Color colorAccent = const Color(0xFFA0B3E2);

Color colorBackground = const Color(0xFFFFFFFF);
Color colorBackground2 = const Color(0xFF7694E2);

Color colorIconBnvActive = const Color(0xFF6788E2);
Color colorBackgroundBnv = const Color(0xFF6E8DDD);
Color colorBackgroundBnv2 = const Color(0xFF5C7BCD);

Color colorBackgroundSearchBar = const Color(0xFFEFF2FF);

Color colorIconStar = const Color(0xFFF5B901);

Color colorTextSearchBar = const Color(0xFF8691B3);
Color colorTextHeading1Dark = const Color(0xFF000000);
Color colorTextHeading1Light = const Color(0xFFFFFFFF);
Color colorTextHeading2 = const Color(0xFF313A3F);
Color colorTextBody1 = const Color(0xFFA6A8AA);
Color colorTextBody2 = const Color(0xFF283238);
Color colorTextBody3 = const Color(0xFF7291E2);

Color colorTextButtonLight = const Color(0xFFFFFFFF);
Color colorTextButtonDark = const Color(0xFF6688E2);

Color colorTextFieldButton = const Color(0xFF7996E2);

// Gradient
LinearGradient linearGradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [colorAccent, colorPrimary],
);

RadialGradient radialGradient =
    RadialGradient(colors: [colorAccent, colorPrimary]);

LinearGradient backgroundGradient = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [colorBackground2, colorBackground],
);

// Text styles
TextStyle textStyleSearchBar = TextStyle(color: colorTextSearchBar);

TextStyle textStyleHeading1Light =
    TextStyle(color: colorTextHeading1Light, fontWeight: FontWeight.bold);

TextStyle textStyleHeading1Dark = TextStyle(
    color: colorTextHeading1Dark, fontWeight: FontWeight.bold, fontSize: 24);

TextStyle textStyleHeading2 = TextStyle(
  color: colorTextHeading2,
  fontWeight: FontWeight.w600,
  fontSize: 16,
);

TextStyle textStyleBody1 = TextStyle(color: colorTextBody1, fontSize: 14);

TextStyle textStyleBody2 = TextStyle(color: colorTextBody2);

TextStyle textStyleBody3 =
    TextStyle(color: colorTextBody3, fontSize: 16, fontWeight: FontWeight.bold);

TextStyle textStyleButtonLight = TextStyle(
  color: colorTextButtonLight,
);
TextStyle textStyleButtonDark = TextStyle(
  color: colorTextButtonDark,
);
