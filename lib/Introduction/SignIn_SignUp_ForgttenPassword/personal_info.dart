import 'package:flutter/material.dart';
import 'package:health_app/home_page.dart';

import '../../Universal Reuseable Widgets/dimensions.dart';
import '../../Universal Reuseable Widgets/reuseable_click_button.dart';
import '../reuseables/textfields.dart';
import '../reuseables/titles.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: Dimensions.height100,
              left: Dimensions.width20,
              right: Dimensions.width10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_outlined),
                    ),
                  ],
                ),
                HeadTitles(
                  text: 'Personally fill the following to get started.',
                  size: Dimensions.height15,
                ),
                SizedBox(
                  height: Dimensions.height50,
                ),
                TextFieldText2(hint: 'Gender'),
                TextFieldText2(hint: 'Date of Birth'),
                SizedBox(
                  height: Dimensions.height50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(),
                      ),
                    );
                  },
                  child: ClickButton(
                    text: 'Continue',
                    size: Dimensions.height25,
                    color: Colors.blueGrey.shade200,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
