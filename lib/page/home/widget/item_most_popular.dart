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
  final Function() onPressed;

  const ItemMostPopular({
    Key? key,
    required this.width,
    required this.backgroundImage,
    required this.textTitle,
    required this.textSubtitle,
    required this.textRating,
    required this.textPrice,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingAll = 16;
    double spaceRow = 20;
    double paddingTotal = paddingAll * 2 + spaceRow;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: (width - paddingTotal) * .4,
        padding: EdgeInsets.all(paddingAll),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            color: colorBackground, borderRadius: BorderRadius.circular(12)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: (width - paddingTotal) * .3,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: backgroundImage,
                  borderRadius: BorderRadius.circular(12)),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  image,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: spaceRow),
                child: SizedBox(
                  // width: (width - paddingTotal) * .7,

                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textTitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: textStyleHeading2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          textSubtitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: textStyleBody1,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: colorIconStar,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  textRating,
                                  maxLines: 1,
                                  style: textStyleBody1,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '\$$textPrice',
                            maxLines: 1,
                            style: textStyleBody3,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
