import 'package:flutter/material.dart';
import 'package:mini_project_1/utils/constants.dart';

class ButtonAddToCart extends StatelessWidget {
  const ButtonAddToCart({
    Key? key,
    this.price = 129,
    this.onPressed,
    this.width = 315,
    this.height = 70,
  }) : super(key: key);
  final int price;
  final VoidCallback? onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final _radius = BorderRadius.circular(16);
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: textScaleFactor < 1.75 ? height : null,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorAccent, colorPrimary],
          begin: const Alignment(0, -6),
          end: const Alignment(2, -.05),
        ),
        borderRadius: _radius,
      ),
      child: MaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: _radius),
        child: Text(
          'Add To Cart \$$price',
          style: textStyleButtonLight.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        onPressed: onPressed ?? () {},
      ),
    );
  }
}
