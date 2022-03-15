import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_project_1/page/components/bottom_nav_bar_icon.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  List<String> svgAssets = [
    'assets/svg/home.svg',
    'assets/svg/favourite.svg',
    'assets/svg/credit_card.svg',
    'assets/svg/users.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          height: 80,
          decoration: BoxDecoration(
            color: Colors.blueAccent.withOpacity(0.4),
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: svgAssets.length,
            itemBuilder: (context, index) {
              return BottomNavigationIcon(
                isActive: index == selectedIndex,
                onPressed: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                icon: svgAssets[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
