import 'package:flutter/material.dart';

import 'dimensions.dart';

class ClickButton extends StatelessWidget {
  ClickButton({
    Key? key,
    required this.text,
    this.color,
    this.size,
    this.widget,
  }) : super(key: key);
  final String text;
  Widget? widget;
  double? size;
  Color? color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: Dimensions.height60,
        width: Dimensions.width50 * 10,
        decoration: BoxDecoration(
          color: Colors.blue.shade900,
          borderRadius: BorderRadius.circular(Dimensions.width10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w700,
              fontSize: size,
            ),
          ),
        ),
      ),
    );
  }
}
