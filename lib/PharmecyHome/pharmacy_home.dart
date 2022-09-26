import 'package:flutter/material.dart';
import 'package:health_app/Universal%20Reuseable%20Widgets/dimensions.dart';
import 'package:health_app/Universal%20Reuseable%20Widgets/search_bars.dart';

import '../PharmecyHome/Categories/anti_malaria.dart';
import '../PharmecyHome/Categories/blood_pressure.dart';
import '../PharmecyHome/Categories/immune_system.dart';
import '../PharmecyHome/Categories/nurero_pill.dart';
import '../PharmecyHome/Categories/others.dart';
import '../PharmecyHome/Categories/pain_killer.dart';
import '../PharmecyHome/Categories/pancreatics.dart';
import '../PharmecyHome/Categories/stomach.dart';
import '../PharmecyHome/selected_category.dart';
import '../Universal Reuseable Widgets/back_button_outline_icon.dart';
import '../Universal Reuseable Widgets/text.dart';
import 'Categories/antibiotics.dart';
import 'bottom_sheet.dart';

class Pharmacy extends StatefulWidget {
  const Pharmacy({Key? key}) : super(key: key);

  @override
  State<Pharmacy> createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: Dimensions.height100,
                        child: Row(
                          children: [
                            const ToHomeButton(),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 4,
                            ),
                            Header1Text(text: 'Pharmacy')
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SearchBar(
                    text: 'Search Drug Supplements',
                    widget: BottomSheetPH(),
                  ),
                  SizedBox(
                    height: Dimensions.height30,
                  ),
                  const Header2Text(text: 'Select Category'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.width15),
              child: SizedBox(
                height: (Dimensions.height200 * 2) + Dimensions.height50,
                child: GridView.count(crossAxisCount: 3, children: const [
                  SelectCategory(
                    navigation: Antibiotics(),
                    text: 'AntiBiotics',
                    image: 'assets/images/antibiotics.jpg',
                  ),
                  SelectCategory(
                    navigation: BloodPressure(),
                    text: 'Blood Pressure',
                    image: 'assets/images/blood pressure.jpg',
                  ),
                  SelectCategory(
                    navigation: PainKiller(),
                    text: 'Pain Killers',
                    image: 'assets/images/pain killers.jpg',
                  ),
                  SelectCategory(
                    navigation: Stomach(),
                    text: 'Stomach',
                    image: 'assets/images/stomach pain.jpg',
                  ),
                  SelectCategory(
                    navigation: AntiMalaria(),
                    text: 'Anti-Malaria',
                    image: 'assets/images/anti malaria.jpg',
                  ),
                  SelectCategory(
                    navigation: Pancreatics(),
                    text: 'Pancreatics',
                    image: 'assets/images/pancreatics.jpg',
                  ),
                  SelectCategory(
                    navigation: NueroPill(),
                    text: 'Nuero Pill',
                    image: 'assets/images/nureo pillls.jpg',
                  ),
                  SelectCategory(
                    navigation: ImmuneSystem(),
                    text: 'ImmuneSystem',
                    image: 'assets/images/immune system.jpg',
                  ),
                  SelectCategory(
                    navigation: Others(),
                    text: 'Others',
                    image: 'assets/images/other pills.jpg',
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
