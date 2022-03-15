import 'package:flutter/material.dart';
import 'package:mini_project_1/model/product.dart';
import 'package:mini_project_1/page/detail/detail_page.dart';
import 'package:mini_project_1/page/home/widget/bottom_nav_bar.dart';
import 'package:mini_project_1/page/home/widget/header.dart';
import 'package:mini_project_1/page/home/widget/item_most_popular.dart';
import 'package:mini_project_1/page/home/widget/list_most_popular.dart';
import 'package:mini_project_1/page/home/widget/search_bar.dart';
import 'package:mini_project_1/utils/constants.dart';
import 'package:mini_project_1/utils/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product(
        image: 'assets/images/drone_2.png',
        backgroundImage: const Color(0xFFE7EBFA),
        textTitle: 'Standard Drone Camera',
        textSubtitle: 'Package Weight: 235g',
        textRating: '4.9 (542)',
        textPrice: '86'
      ),
      Product(
        image: 'assets/images/drone_3.png',
        backgroundImage: const Color(0xFFFFECE3),
        textTitle: '3D flip Drone Camera',
        textSubtitle: 'Product weight: 70g',
        textRating: '4.8 (497)',
        textPrice: '78'
      ),
      Product(
        image: 'assets/images/drone_4.png',
        backgroundImage: const Color(0xFFB8EBFF),
        textTitle: 'Remote Control Drone',
        textSubtitle: 'Wrist Remote Control',
        textRating: '4.8 (396)',
        textPrice: '99'
      ),
    ];

    return Scaffold(
      backgroundColor: colorBackground,
      body: LayoutBuilder(
        builder: (_, constraint) {
          if (constraint.maxWidth >= 480) {
            return LandscapeHomeView(
              products: products,
            );
          } else {
            //   return PortraitHomeView();
            return DetailPage(
              title: 'DJI ',
            );
          }
        },
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class LandscapeHomeView extends StatelessWidget {
  final List<Product> products;

  const LandscapeHomeView({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = context.width;
    double paddingAll = 16;
    double spaceRow = 20;
    double paddingTotal = paddingAll * 2 + spaceRow;

    return Padding(
      padding: EdgeInsets.only(
        top: context.media.padding.top,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(12),
            child: SearchBar(),
          ),
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: screenWidth * .35,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: paddingAll,
                      right: spaceRow / 2
                    ),
                    child: const Header(),
                  )
                ),
                SizedBox(
                  width: screenWidth * .65,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: paddingAll / 2,
                      right: paddingAll,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Most Popular Drone',
                              style: textStyleHeading1Dark,
                            ),
                            Text(
                              'See all',
                              style: TextStyle(
                                fontSize: 14,
                                color: colorTextBody3,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListMostPopular(
                            products: products,
                            itemBuilder: (_, index) {
                              return ItemMostPopular(
                                width: (screenWidth - paddingTotal) * .65,
                                backgroundImage: products[index].backgroundImage,
                                textTitle: products[index].textTitle,
                                textSubtitle: products[index].textSubtitle,
                                textRating: products[index].textRating,
                                textPrice: products[index].textPrice,
                                image: products[index].image,
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}

class PortraitHomeView extends StatelessWidget {
  const PortraitHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> productItems = [
      Product(
          image: 'assets/images/drone_2.png',
          backgroundImage: const Color(0xFFE7EBFA),
          textTitle: 'Standard Drone Camera',
          textSubtitle: 'Package Weight: 235g',
          textRating: '4.9 (542)',
          textPrice: '86'),
      Product(
          image: 'assets/images/drone_3.png',
          backgroundImage: const Color(0xFFFFECE3),
          textTitle: '3D flip Drone Camera',
          textSubtitle: 'Product weight: 70g',
          textRating: '4.8 (497)',
          textPrice: '78'),
      Product(
          image: 'assets/images/drone_4.png',
          backgroundImage: const Color(0xFFB8EBFF),
          textTitle: 'Remote Control Drone',
          textSubtitle: 'Wrist Remote Control',
          textRating: '4.8 (396)',
          textPrice: '99'),
    ];

    return Scaffold(
      extendBody: true,
      // backgroundColor: colorBackground,
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              colorBackground2.withOpacity(0),
              colorBackground,
            ],
            center: Alignment.bottomCenter,
            radius: 1.1,
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 24, right: 24, top: 40, bottom: 30),
              child: SearchBar(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 30),
              child: Header(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Popular Drone',
                    style: textStyleHeading1Dark,
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 14, color: colorTextBody3),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListMostPopular(
                  itemBuilder: (context, index) {
                    final productData = productItems[index];
                    return ItemMostPopular(
                      width: context.width,
                      backgroundImage: productData.backgroundImage,
                      textTitle: productData.textTitle,
                      textSubtitle: productData.textSubtitle,
                      textRating: productData.textRating,
                      textPrice: productData.textPrice,
                      image: productData.image,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailPage(),
                          ),
                        );
                      },
                    );
                  },
                  products: productItems,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
