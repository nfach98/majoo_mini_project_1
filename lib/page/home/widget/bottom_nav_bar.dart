import 'package:flutter/material.dart';
import 'package:mini_project_1/page/components/bottom_nav_bar_custom_painter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.5),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Row(
        children: [
          SizedBox(
              height: 50,
              width: 50,
              child: CustomPaint(
                painter: BottomNavBarCustomPainter(),
                willChange: true,
                child: const Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              )),
        ],
      ),
    );
  }
}
