import 'package:flutter/material.dart';
import 'package:mini_project_1/model/product.dart';
import 'package:mini_project_1/page/home/widget/item_most_popular.dart';

class ListMostPopular extends StatelessWidget {
  final List<Product> products;
  final Widget Function(BuildContext, int) itemBuilder;

  const ListMostPopular(
      {Key? key, required this.itemBuilder, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      itemBuilder: itemBuilder,
    );
  }
}
