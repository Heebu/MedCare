import 'package:flutter/material.dart';

class HeadTitles extends StatelessWidget {
  HeadTitles({Key? key, required this.text, this.size}) : super(key: key);
  final String text;
  double? size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'MedCare',
            style: TextStyle(
              color: Colors.blue.shade900,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.blueGrey.shade600,
              fontSize: size,
            ),
          ),
        ),
      ],
    );
  }
}
