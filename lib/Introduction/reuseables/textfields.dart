import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldText extends StatelessWidget {
  TextFieldText({
    Key? key,
    required this.text,
    required this.icon,
    this.validator,
    this.hint,
    this.onSaved,
  }) : super(key: key);
  final String text;
  final Icon icon;
  String? hint;
  FormFieldValidator? validator;
  FormFieldSetter? onSaved;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 0.5),
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueGrey.shade50),
          padding: EdgeInsets.only(
            left: 20,
            right: 10,
          ),
          margin: EdgeInsets.only(
            // left: 20,
            right: 10,
          ),
          child: TextFormField(
            onSaved: onSaved,
            validator: validator,
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: icon,
              hintText: hint,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class TextFieldText2 extends StatelessWidget {
  const TextFieldText2({Key? key, required this.hint}) : super(key: key);
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 0.5),
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueGrey.shade50),
          padding: EdgeInsets.only(
            left: 20,
            right: 10,
          ),
          margin: EdgeInsets.only(
            // left: 20,
            right: 10,
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 0.5),
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueGrey.shade50),
          padding: EdgeInsets.only(
            left: 20,
            right: 10,
          ),
          margin: EdgeInsets.only(
            // left: 20,
            right: 10,
          ),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
                icon: Icon(Icons.lock_open),
                suffixIcon: Icon(Icons.remove_red_eye_outlined)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
