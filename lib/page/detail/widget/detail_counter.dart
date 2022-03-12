import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  TextEditingController counterController = TextEditingController();

  void increase() {
    counter++;
    setValue(counter);
  }

  void decrease() {
    if (counter > 1) {
      counter--;
      setValue(counter);
    }
  }

  void setValue(int counter) {
    counterController.text = counter.toString().padLeft(2, '0');
  }

  @override
  void initState() {
    setValue(counter);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: decrease,
          child: Container(
            decoration: BoxDecoration(
                gradient: linearGradient,
                borderRadius: BorderRadius.circular(10)),
            height: widget.screenHeight * 0.040,
            width: widget.screenHeight * 0.040,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.screenWidth * 0.085),
          child: SizedBox(
            height: widget.screenHeight * 0.040,
            width: widget.screenHeight * 0.040,
            child: TextField(
              controller: counterController,
              inputFormatters: [
                LengthLimitingTextInputFormatter(2),
              ],
              showCursor: false,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: (widget.screenHeight * 0.030) *
                    mediaQuery.textScaleFactor.clamp(1, 1.3),
              ),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: colorTextFieldButton),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: colorTextFieldButton),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) => counter = int.parse(value),
            ),
          ),
        ),
        InkWell(
          onTap: increase,
          child: Container(
            decoration: BoxDecoration(
              gradient: linearGradient,
              borderRadius: BorderRadius.circular(10),
            ),
            height: widget.screenHeight * 0.040,
            width: widget.screenHeight * 0.040,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
