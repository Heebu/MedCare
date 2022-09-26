import 'package:flutter/material.dart';
import 'package:health_app/Universal%20Reuseable%20Widgets/reuseable_click_button.dart';

import '../../Universal Reuseable Widgets/dimensions.dart';
import '../reuseables/textfields.dart';
import '../reuseables/titles.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: Dimensions.height30,
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
                    icon: Icon(Icons.arrow_back_outlined),
                  ),
                ],
              ),
              HeadTitles(
                text: 'Forgot password',
                size: Dimensions.height20,
              ),
              SizedBox(
                height: Dimensions.height50,
              ),
              TextFieldText(
                text: 'Email',
                icon: Icon(Icons.mail),
              ),
              SizedBox(
                height: Dimensions.height15 * 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.width70,
                  right: Dimensions.width70,
                ),
                child: Text(
                  'We will send a code '
                  'to the email address or '
                  'phone number you registered '
                  'to regain your password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blueGrey, fontSize: Dimensions.height20),
                ),
              ),
              SizedBox(
                height: Dimensions.height15 * 10,
              ),
              ClickButton(
                text: 'Reset Code',
                size: Dimensions.height25,
                color: Colors.blueGrey.shade200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
