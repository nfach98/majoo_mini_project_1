import 'package:flutter/material.dart';
import 'package:mini_project_1/utils/constants.dart';
import 'package:mini_project_1/utils/extensions.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    this.rating = 4.9,
    this.sales = 542,
    this.imageName = 'drone_1.png',
    this.onPressed,
    this.width,
  }) : super(key: key);
  final double rating;
  final int sales;
  final String imageName;
  final VoidCallback? onPressed;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final width = this.width ?? context.width;
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Container(
      // TODO need to change the height of the header when width >= 480
      height: width >= 480 ? 350 : 175,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: RadialGradient(
          colors: [colorAccent, colorPrimary],
          center:
              width >= 480 ? const Alignment(0, -.5) : const Alignment(.5, 0),
          radius: 2.5,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 4.5, 16),
            child: Align(
              alignment:
                  width >= 480 ? Alignment.topCenter : Alignment.centerRight,
              child: Image.asset('assets/images/$imageName'),
            ),
          ),
          SizedBox(
            // TODO need padding default, dummy 32
            width: (width - 32) / 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Dji Phantom Drone',
                    style: textStyleHeading1Light.copyWith(fontSize: 24),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textScaleFactor: textScaleFactor > 1 ? 1.18 : 1,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star_rounded, color: colorIconStar, size: 20),
                      Flexible(
                        child: Text(
                          '$rating ($sales)',
                          style:
                              textStyleBody1.copyWith(color: colorBackground),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  if (width >= 480)
                    const SizedBox(height: 16)
                  else
                    const Spacer(),
                  ElevatedButton(
                    onPressed: onPressed ?? () {},
                    child: const Text('Buy Now'),
                    style: ElevatedButton.styleFrom(
                      primary: colorBackground,
                      onPrimary: colorPrimary,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
