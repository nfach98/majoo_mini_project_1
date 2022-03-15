import 'package:flutter/material.dart';
import 'package:mini_project_1/utils/constants.dart';

class DetailCounter extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;

  const DetailCounter({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  @override
  State<DetailCounter> createState() => _DetailCounterState();
}

class _DetailCounterState extends State<DetailCounter> {
  int counter = 1;
  String counterText = '';

  void increase() {
    if (counter < 99) {
      counter++;
      setValue(counter);
    }
  }

  void decrease() {
    if (counter > 1) {
      counter--;
      setValue(counter);
    }
  }

  void setValue(int counter) {
    setState(() {
      counterText = counter.toString().padLeft(2, '0');
    });
  }

  @override
  void initState() {
    setValue(counter);
    super.initState();
  }

  Widget buttonCounter({
    VoidCallback? function,
    required double size,
    required IconData icon,
  }) {
    return InkWell(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
            gradient: linearGradient, borderRadius: BorderRadius.circular(10)),
        height: size,
        width: size,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buttonCounter(
          size: widget.screenHeight * 0.040,
          icon: Icons.remove,
          function: decrease,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.screenWidth * 0.085),
          child: SizedBox(
            height: widget.screenHeight * 0.040,
            width: widget.screenHeight * 0.040,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: colorTextFieldButton),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    counterText,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        buttonCounter(
          size: widget.screenHeight * 0.040,
          icon: Icons.add,
          function: increase,
        )
      ],
    );
  }
}
