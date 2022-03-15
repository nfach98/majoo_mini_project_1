import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mini_project_1/utils/constants.dart';

class DetailSlider extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;
  final String image;

  const DetailSlider({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.image,
  }) : super(key: key);

  @override
  State<DetailSlider> createState() => _DetailSliderState();
}

class _DetailSliderState extends State<DetailSlider> {
  final CarouselController _controller = CarouselController();

  int _current = 0;
  List<String> imgList = [];
  List<Widget> imageSliders = [];

  Widget indicatorSlider(int entryKey) {
    return _current == entryKey
        ? Container(
            width: widget.screenHeight * 0.050,
            height: widget.screenHeight * 0.050,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.4),
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: indicatorWidget(entryKey),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: indicatorWidget(entryKey),
          );
  }

  Widget indicatorWidget(int entryKey) {
    return Center(
      child: SizedBox(
        height: widget.screenHeight * 0.0250,
        width: widget.screenHeight * 0.0250,
        child: CircleAvatar(
          backgroundColor:
              Colors.white.withOpacity(_current == entryKey ? 1 : 0.7),
        ),
      ),
    );
  }

  @override
  void initState() {
    imgList.add(widget.image);
    imgList.add(widget.image);
    imgList.add(widget.image);

    imageSliders = imgList
        .map(
          (item) => ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Image.asset(item, fit: BoxFit.cover),
          ),
        )
        .toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.screenHeight,
      width: widget.screenWidth,
      decoration: BoxDecoration(
        gradient: radialGradient(widget.screenWidth),
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(50)),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: widget.screenHeight * 0.30,
                bottom: widget.screenHeight * 0.02),
            child: CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                  height: widget.screenHeight * 0.50,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: widget.screenHeight * 0.050),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map(
                (entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: indicatorSlider(entry.key),
                  );
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
