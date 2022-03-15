import 'package:flutter/material.dart';
import 'package:mini_project_1/page/detail/widget/button_add_to_cart.dart';
import 'package:mini_project_1/page/detail/widget/detail_appbar.dart';
import 'package:mini_project_1/page/detail/widget/detail_content.dart';
import 'package:mini_project_1/page/detail/widget/detail_counter.dart';
import 'package:mini_project_1/page/detail/widget/detail_slider.dart';
import 'package:mini_project_1/utils/constants.dart';

class DetailPageLandscape extends StatelessWidget {
  final String title;

  const DetailPageLandscape({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              colorPrimary.withOpacity(0.2),
              colorAccent.withOpacity(0.2),
            ],
            center: Alignment.bottomRight,
            radius: 0.3,
          ),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                DetailSlider(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth * 0.5,
                  image: 'assets/images/drone_1.png',
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: DetailContent(
                          screenHeight: screenHeight,
                          screenWidth: screenWidth * 0.5,
                          contentHeight: 104,
                          contentWidth: screenWidth * 0.5,
                          title: title,
                          description:
                              'The light socket and the different screens can cause the color of the item in the image to be a little different from the actual one.'),
                    ),
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
              ],
            ),
            const SafeArea(
              child: DetailAppBar(screenHeight: 5),
            )
          ],
        ),
      ),
    );
  }
}
