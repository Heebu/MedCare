import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Universal Reuseable Widgets/dimensions.dart';
import '../Universal Reuseable Widgets/text.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: (MediaQuery.of(context).size.width / 2) - 50,
        //margin: EdgeInsets.only(top: 5, bottom: 5),
        decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(30),
            color: Colors.blueGrey.shade50),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class RatedDoctors extends StatelessWidget {
  const RatedDoctors({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Dimensions.height10,
        bottom: Dimensions.height15,
      ),
      child: Row(
        children: [
          Container(
            height: Dimensions.height100,
            width: Dimensions.height100,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  image,
                ),
              ),
              borderRadius: BorderRadius.circular(Dimensions.height20),
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.height25,
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                const Text('Cardiologist in apollo hospital'),
                SizedBox(
                  width: Dimensions.width10,
                ),
                const StarRatings(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StarRatings extends StatelessWidget {
  const StarRatings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star,
          color: Colors.orange,
        ),
        Header2Text(text: '4.5'),
        Text('(17 reviews)'),
      ],
    );
  }
}
