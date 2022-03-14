import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project_1/utils/constants.dart';

import 'bottom_nav_bar_custom_painter.dart';

class BottomNavigationIcon extends StatelessWidget {
  final String icon;
  final bool isActive;
  final Function onPressed;

  const BottomNavigationIcon({
    Key? key,
    required this.isActive,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: CustomPaint(
        painter: BottomNavBarCustomPainter(isPainted: isActive),
        willChange: true,
        child: GestureDetector(
          onTap: onPressed as Function(),
          child: Container(
            height: 55,
            width: 50,
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 8),
            child: SvgPicture.asset(
              icon,
              color: isActive ? colorPrimary : colorBackground,
            ),
          ),
        ),
      ),
    );
  }
}
