import 'package:flutter/material.dart';

class DetailAppBar extends StatefulWidget {
  final double screenHeight;
  const DetailAppBar({
    Key? key,
    required this.screenHeight,
  }) : super(key: key);

  @override
  State<DetailAppBar> createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  bool isFavourite = false;

  late ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    primary: Colors.white.withOpacity(0.4),
    fixedSize: Size(widget.screenHeight, widget.screenHeight),
    shape: const CircleBorder(
      side: BorderSide(color: Colors.white, width: 2),
    ),
  );
  
  void favouriteClicked() {
    isFavourite = !isFavourite;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          style: buttonStyle,
          child: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ElevatedButton(
          style: buttonStyle,
          child: isFavourite
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_border),
          onPressed: () {
            setState(() {
              favouriteClicked();
            });
          },
        ),
      ],
    );
  }
}
