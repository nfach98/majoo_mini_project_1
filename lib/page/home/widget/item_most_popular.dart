import 'package:flutter/material.dart';
import 'package:mini_project_1/utils/constants.dart';

class ItemMostPopular extends StatelessWidget {
  final double width;
  final String image;
  final Color backgroundImage;
  final String textTitle;
  final String textSubtitle;
  final String textRating;
  final String textPrice;

  const ItemMostPopular({Key? key, required this.width, required this.backgroundImage, required this.textTitle, required this.textSubtitle, required this.textRating, required this.textPrice, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingAll = 16;
    double spaceRow = 20;
    double paddingTotal = paddingAll * 2 + spaceRow;

    return Container(
      padding: EdgeInsets.all(paddingAll),
      decoration: BoxDecoration(
        color: colorBackground,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: (width - paddingTotal) * .3,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: backgroundImage,
              borderRadius: BorderRadius.circular(12)
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                image,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: spaceRow),
            child: SizedBox(
              width: (width - paddingTotal) * .7,
              height: (width - paddingTotal) * .3,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textTitle,
                    style: textStyleHeading2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      textSubtitle,
                      style: textStyleBody1,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star,
                                color: colorIconStar,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  textRating,
                                  style: textStyleBody1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          textPrice,
                          style: textStyleBody3,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
