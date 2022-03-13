import 'package:flutter/material.dart';
import 'package:mini_project_1/utils/constants.dart';

class ButtonAddToCart extends StatelessWidget {
  const ButtonAddToCart({Key? key, this.price = 129, this.onPressed, this.width}) : super(key: key);
  final int price;
  final VoidCallback? onPressed;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final _radius = BorderRadius.circular(16);
    return Container(
      height: 70,
      width: width ?? 315,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorAccent, colorPrimary],
          begin: const Alignment(0, -6),
          end: const Alignment(2, -.05),
        ),
        borderRadius: _radius,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: _radius),
        ),
        child: Text(
          'Add To Cart \$$price',
          style: textStyleButtonLight.copyWith(fontSize: 22, fontWeight: FontWeight.w600),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        onPressed: onPressed ?? () {},
      ),
    );
  }
}
