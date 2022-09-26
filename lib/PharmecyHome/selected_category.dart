import 'package:flutter/material.dart';

import '../Universal Reuseable Widgets/dimensions.dart';

class SelectCategory extends StatelessWidget {
  const SelectCategory({
    Key? key,
    required this.text,
    required this.image,
    required this.navigation,
  }) : super(key: key);

  final String text;
  final String image;
  final Widget navigation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigation,
          ),
        );
      },
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                bottom: Dimensions.height8, top: Dimensions.height5),
            child: Container(
                width: Dimensions.width80,
                height: Dimensions.height60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(Dimensions.height10),
                  color: Colors.white,
                )),
          ),
          Center(
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
