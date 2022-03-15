import 'package:flutter/material.dart';
import 'package:mini_project_1/page/detail/widget/button_add_to_cart.dart';
import 'package:mini_project_1/page/detail/widget/detail_appbar.dart';
import 'package:mini_project_1/page/detail/widget/detail_content.dart';
import 'package:mini_project_1/page/detail/widget/detail_counter.dart';
import 'package:mini_project_1/page/detail/widget/detail_slider.dart';
import 'package:mini_project_1/utils/constants.dart';

class DetailPage extends StatelessWidget {
  final String title;
  const DetailPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [colorPrimary.withOpacity(0), colorBackground],
            center: const Alignment(-2.5, 1.5),
            radius: 1.6,
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                DetailSlider(
                  screenHeight: screenHeight * 0.5,
                  screenWidth: screenWidth,
                  image: 'assets/images/drone_1.png',
                ),
                const SafeArea(child: DetailAppBar(screenHeight: 5))
              ],
            ),
            DetailContent(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                contentHeight: 100,
                contentWidth: screenWidth,
                title: title,
                description:
                    'The light socket and the different screens can cause the color of the item in the image to be a little different from the actual one.'),
            DetailCounter(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            ),
            const Spacer(),
            const Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ButtonAddToCart(),
            ),
          ],
        ),
      ),
    );
  }
}
