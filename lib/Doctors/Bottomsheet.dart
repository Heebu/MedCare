import 'package:flutter/material.dart';

import '../Universal Reuseable Widgets/dimensions.dart';
import '../Universal Reuseable Widgets/reuseable_click_button.dart';
import '../Universal Reuseable Widgets/text.dart';

class ButtomSheet extends StatefulWidget {
  const ButtomSheet({Key? key}) : super(key: key);

  @override
  State<ButtomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<ButtomSheet> {
  Color colour = Colors.grey;
  Color colours = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Dimensions.height20,
        right: Dimensions.width20,
        left: Dimensions.width20,
        bottom: Dimensions.height20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Header1Text(text: 'Categories'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      colour == Colors.blue.shade900;
                      colours == Colors.blue.shade900;
                    });
                  },
                  child: SnackBarCategories(
                    text: 'Dentist',
                    icon: '🦷',
                    colour: colour,
                    colours: colours,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      colour == Colors.blue.shade900;
                      colours == Colors.blue.shade900;
                    });
                  },
                  child: SnackBarCategories(
                    text: 'Surgeon',
                    icon: '🩺',
                    colour: colour,
                    colours: colours,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      colour == Colors.blue.shade900;
                      colours == Colors.blue.shade900;
                    });
                  },
                  child: SnackBarCategories(
                    text: 'Allergist',
                    icon: '⚕️',
                    colour: colour,
                    colours: colours,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      colour == Colors.blue.shade900;
                      colours == Colors.blue.shade900;
                    });
                  },
                  child: SnackBarCategories(
                    text: 'Urologist',
                    icon: '💊',
                    colour: colour,
                    colours: colours,
                  ),
                ),
              ],
            ),
          ),

          //Experience
          Header1Text(text: 'Experiences'),
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
          SizedBox(
            height: Dimensions.height30,
          ),
          //Apply Button
          ClickButton(
            text: 'Apply',
            color: Colors.blue.shade100,
            size: 25,
          ),
        ],
      ),
    );
  }
}

class SnackBarCategories extends StatelessWidget {
  const SnackBarCategories({
    Key? key,
    required this.icon,
    required this.text,
    required this.colour,
    required this.colours,
  }) : super(key: key);

  final String icon;
  final String text;
  final Color colour;
  final Color colours;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height15 * 10,
      width: Dimensions.width100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(Dimensions.height10),
      ),
      padding: EdgeInsets.only(
          bottom: Dimensions.height10, top: Dimensions.height10),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: Dimensions.height80,
            width: Dimensions.width80,
            margin: EdgeInsets.only(bottom: Dimensions.height10),
            decoration: BoxDecoration(
              color: colour,
              borderRadius: BorderRadius.circular(Dimensions.height20),
            ),
            child: Center(
              child: Text(
                icon,
                style: TextStyle(fontSize: Dimensions.height25),
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: colours,
            ),
          ),
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
      width: MediaQuery.of(context).size.width / 4,
      height: Dimensions.height50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(Dimensions.height20),
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
