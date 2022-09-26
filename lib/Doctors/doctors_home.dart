import 'package:flutter/material.dart';
import 'package:health_app/Doctors/reuseables.dart';
import 'package:health_app/Universal%20Reuseable%20Widgets/back_button_outline_icon.dart';

import '../Universal Reuseable Widgets/dimensions.dart';
import '../Universal Reuseable Widgets/search_bars.dart';
import '../Universal Reuseable Widgets/text.dart';
import 'Bottomsheet.dart';
import 'doctor_profile.dart';

class DoctorsHome extends StatefulWidget {
  const DoctorsHome({Key? key}) : super(key: key);

  @override
  State<DoctorsHome> createState() => _DoctorsHomeState();
}

class _DoctorsHomeState extends State<DoctorsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                    height: Dimensions.height15 * 10,
                    child: Row(
                      children: [
                        // Header
                        const ToHomeButton(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 4,
                        ),
                        Header1Text(
                          text: 'Doctors',
                        )
                      ],
                    ),
                  ),
                ],
              ),

              //Search Bar
              const SearchBar(
                text: 'Search doctor...',
                widget: ButtomSheet(),
              ),
              SizedBox(
                height: Dimensions.height15,
              ),
              const Header2Text(
                text: 'Sort by Category',
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height10,
                    left: Dimensions.width5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Category(
                      text: '🦷  Dentists',
                    ),
                    Category(
                      text: '👀  Opticians',
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Header2Text(text: 'Top Rated Doctors'),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All'),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.height30),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      child: RatedDoctors(
                        name: 'Dr. Eze Santos',
                        image: 'assets/images/Idris.jpg',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const DoctorProfile();
                            },
                          ),
                        );
                      },
                    ),
                    RatedDoctors(
                      name: 'Dr. Uche Brown',
                      image: 'assets/images/Idris.jpg',
                    ),
                    RatedDoctors(
                      name: 'Dr. Eze',
                      image: 'assets/images/Idris.jpg',
                    ),
                    RatedDoctors(
                      name: 'Dr. Eze Santos',
                      image: 'assets/images/Idris.jpg',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
