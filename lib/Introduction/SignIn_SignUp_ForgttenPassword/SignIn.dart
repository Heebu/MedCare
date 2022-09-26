import 'package:flutter/material.dart';
import 'package:health_app/Introduction/SignIn_SignUp_ForgttenPassword/forgot_password.dart';

import '../../Universal Reuseable Widgets/dimensions.dart';
import '../../Universal Reuseable Widgets/reuseable_click_button.dart';
import '../../home_page.dart';
import '../reuseables/textfields.dart';
import '../reuseables/titles.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                text: '👋Welcome back! Sign in',
                size: Dimensions.height20,
              ),
              SizedBox(
                height: Dimensions.height50,
              ),
              TextFieldText(
                text: 'Email',
                icon: Icon(Icons.mail),
              ),
              TextFieldText(
                text: 'Password',
                icon: Icon(Icons.lock),
              ),
              SizedBox(
                height: Dimensions.height50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const MyHomePage();
                      },
                    ),
                  );
                },
                child: ClickButton(
                  text: 'Sign In',
                  size: Dimensions.height25,
                  color: Colors.blueGrey.shade200,
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()),
                      );
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Stay signed in',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
