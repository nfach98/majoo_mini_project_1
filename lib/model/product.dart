import 'package:flutter/cupertino.dart';

class Product {
  final String image;
  final Color backgroundImage;
  final String textTitle;
  final String textSubtitle;
  final String textRating;
  final String textPrice;

  Product({required this.image, required this.backgroundImage, required this.textTitle, required this.textSubtitle, required this.textRating, required this.textPrice});
}