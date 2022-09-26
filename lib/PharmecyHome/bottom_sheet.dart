import 'package:flutter/material.dart';

import '../Universal Reuseable Widgets/dimensions.dart';
import '../Universal Reuseable Widgets/reuseable_click_button.dart';
import '../Universal Reuseable Widgets/text.dart';

class BottomSheetPH extends StatefulWidget {
  const BottomSheetPH({Key? key}) : super(key: key);

  @override
  State<BottomSheetPH> createState() => _BottomSheetState();
}

Color colour = Colors.blue.shade900;

class _BottomSheetState extends State<BottomSheetPH> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Dimensions.height10,
        right: Dimensions.width10,
        left: Dimensions.width10,
        bottom: Dimensions.height10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header1Text(text: 'Categories'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    colour == Colors.blue.shade900;
                  });
                },
                child: SnackBarCategories(
                  text: 'Dentist',
                  icon: '🦷',
                  colour: colour,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    colour == Colors.blue.shade900;
                  });
                },
                child: SnackBarCategories(
                  text: 'Surgeon',
                  icon: '🩺',
                  colour: colour,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    colour == Colors.blue.shade900;
                  });
                },
                child: SnackBarCategories(
                  text: 'Allergist',
                  icon: '⚕️',
                  colour: colour,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    colour == Colors.blue.shade900;
                  });
                },
                child: SnackBarCategories(
                  text: 'Urologist',
                  icon: '💊',
                  colour: colour,
                ),
              ),
            ],
          ),
          Header1Text(text: 'Experience'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SnackBarExperience(
                text: '0-2yrs',
              ),
              SnackBarExperience(
                text: '3-5yrs',
              ),
              SnackBarExperience(
                text: '10+yrs',
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.blue.shade900,
            child: ClickButton(
              text: 'Apply',
              size: Dimensions.height35,
              color: Colors.blueGrey.shade200,
            ),
          )
        ],
      ),
    );
  }
}

class SnackBarExperience extends StatelessWidget {
  const SnackBarExperience({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height50,
      width: Dimensions.width100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(Dimensions.height5),
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}

class SnackBarCategories extends StatelessWidget {
  SnackBarCategories({
    Key? key,
    required this.icon,
    required this.text,
    this.colour,
  }) : super(key: key);
  final String icon;
  final String text;
  Color? colour = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (Dimensions.height10 * 10) + Dimensions.height20,
      width: Dimensions.width80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(Dimensions.height20),
      ),
      padding: const EdgeInsets.all(7),
      margin: const EdgeInsets.all(7),
      child: Column(
        children: [
          Container(
            height: Dimensions.height70,
            decoration: BoxDecoration(
              color: colour,
              borderRadius: BorderRadius.circular(
                Dimensions.height20,
              ),
              border: Border.all(color: Colors.black26),
            ),
            child: Center(
              child: Text(
                icon,
                style: TextStyle(
                  fontSize: Dimensions.height30,
                ),
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: colour,
            ),
          ),
        ],
      ),
    );
  }
}
