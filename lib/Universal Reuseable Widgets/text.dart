import 'package:flutter/cupertino.dart';

import 'dimensions.dart';

class Header1Text extends StatelessWidget {
  Header1Text({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);
  final String text;
  Color? color = CupertinoColors.darkBackgroundGray;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: Dimensions.height40,
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }
}

class Header2Text extends StatelessWidget {
  const Header2Text({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: Dimensions.height30,
      ),
    );
  }
}
