import 'package:flutter/material.dart';

import '../home_page.dart';

class ToHomeButton extends StatelessWidget {
  const ToHomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black26),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const MyHomePage()),
          );
        },
        icon: const Icon(Icons.arrow_back_outlined),
      ),
    );
  }
}
