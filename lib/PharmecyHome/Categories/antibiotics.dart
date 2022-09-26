import 'package:flutter/material.dart';

import '../../Universal Reuseable Widgets/text.dart';
import 'drug_box.dart';

class Antibiotics extends StatefulWidget {
  const Antibiotics({Key? key}) : super(key: key);

  @override
  State<Antibiotics> createState() => _AntibioticsState();
}

class _AntibioticsState extends State<Antibiotics> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  const Header2Text(
                    text: 'Antimalarial',
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 700,
                  child: ListView.builder(
                    itemBuilder: (context, index) => DrugCart(
                      image: 'assets/images/anti malaria.jpg',
                      drugName: 'Armathem',
                    ),
                    itemCount: 30,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
