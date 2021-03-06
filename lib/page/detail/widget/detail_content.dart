import 'package:flutter/material.dart';
import 'package:mini_project_1/utils/constants.dart';

class DetailContent extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final double contentHeight;
  final double contentWidth;
  final String title;
  final String description;

  const DetailContent({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.contentHeight,
    required this.contentWidth,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 20),
          child: Text(
            title,
            textScaleFactor: mediaQuery.textScaleFactor.clamp(1, 1.5),
            style: textStyleHeading2,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: contentHeight,
          width: contentWidth,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: Text(
                  description,
                  textScaleFactor: mediaQuery.textScaleFactor.clamp(1, 1.5),
                  style: textStyleBody1,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
