import 'package:flutter/material.dart';
import 'package:health_app/Introduction/SignIn_SignUp_ForgttenPassword/SignIn.dart';
import 'package:health_app/Introduction/SignIn_SignUp_ForgttenPassword/personal_info.dart';

import '../../Universal Reuseable Widgets/dimensions.dart';
import '../../Universal Reuseable Widgets/reuseable_click_button.dart';
import '../reuseables/textfields.dart';
import '../reuseables/titles.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    String _firstName, _lastName, _email, _phoneNumber;

    TextEditingController _password = TextEditingController();
    TextEditingController _confirmPassword = TextEditingController();

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
          child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: Dimensions.height70,
            bottom: Dimensions.height100,
            left: Dimensions.width20,
            right: Dimensions.width10,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeadTitles(
                  text: 'Create an account',
                  size: Dimensions.height20,
                ),
                SizedBox(
                  height: Dimensions.height50,
                ),
                TextFieldText(
                  validator: (value) {
                    if (value.isEmpty && value != null) {
                      return 'Please fill in  the email box';
                    } else {
                      _firstName = value;
                    }
                  },
                  text: 'Email',
                  icon: Icon(Icons.mail),
                ),
                TextFieldText(
                  text: 'First Name',
                  icon: Icon(Icons.person_pin),
                ),
                TextFieldText(
                  text: 'Last Name',
                  icon: Icon(Icons.person_pin),
                ),
                Password(),
                Password(),
                SizedBox(
                  height: Dimensions.height50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PersonalInfo(),
                      ),
                    );
                  },
                  child: ClickButton(
                    text: 'Register',
                    size: Dimensions.height25,
                    color: Colors.blueGrey.shade200,
                  ),
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                const Text('Already have an account?'),
                SizedBox(
                  height: Dimensions.height50,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                    if (_formKey.currentState!.validate()) {
                      return;
                    } else {
                      return;
                    }
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: Dimensions.height30,
                        color: Colors.blue.shade900),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
