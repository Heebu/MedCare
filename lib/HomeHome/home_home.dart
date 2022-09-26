import 'package:flutter/material.dart';
import 'package:health_app/HomeHome/Services/doctor.dart';
import 'package:health_app/HomeHome/Services/drugs.dart';

import '../Universal Reuseable Widgets/dimensions.dart';
import 'Services/others.dart';
import 'Services/services.dart';

class HomeHome extends StatefulWidget {
  const HomeHome({Key? key}) : super(key: key);

  @override
  State<HomeHome> createState() => _HomeHomeState();
}

class _HomeHomeState extends State<HomeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              right: Dimensions.height10,
              left: Dimensions.width10,
              top: Dimensions.height10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Dimensions.height70,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '👋 Hello!',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: Dimensions.height20),
                          ),
                          Text(
                            'Adedeji Idris',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Dimensions.height30,
                            ),
                          ),
                          // Text('Go and Eat 😋'),
                          // Text('You are not sick 😂'),
                        ],
                      ),
                      const Spacer(),
                      Container(
                          height: Dimensions.height50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/Idris.jpg',
                              ),
                            ),
                            borderRadius:
                                BorderRadius.circular(Dimensions.height5),
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),

                Text(
                  'Services',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: Dimensions.height30,
                  ),
                ),
                Container(
                  height: Dimensions.height100 + Dimensions.height80,
                  color: Colors.transparent,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //see a doctor
                      Services(
                        icons: Icons.person_rounded,
                        text: 'See a Doctor',
                        details:
                            'Have a personal session with Professional Doctors',
                        colors: Colors.blue,
                        boxColor: Colors.pink.shade100,
                        navigator: const SeeADoctor(),
                      ),
                      //order a drug
                      Services(
                        icons: Icons.medical_services,
                        text: 'Order a Drug',
                        details:
                            'Order and get your medical supplies delivered to your doorstep',
                        colors: Colors.orangeAccent,
                        boxColor: Colors.blue.shade100,
                        navigator: OrderADrug(),
                      ),

                      //Dunno
                      Services(
                        icons: Icons.rate_review,
                        text: 'Dunno what this is',
                        details: 'We will have to check this later',
                        colors: Colors.green,
                        boxColor: Colors.yellow.shade200,
                        navigator: const Others(),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: Dimensions.height30,
                ),

                //Emergency Tips
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: Dimensions.height100,
                    padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width15,
                      top: Dimensions.height15,
                      bottom: Dimensions.height15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.height30),
                      gradient: const LinearGradient(
                        colors: [Colors.green, Colors.blueGrey, Colors.teal],
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: Dimensions.width200 + Dimensions.width30,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Emergency Tips',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: Dimensions.height20 +
                                        Dimensions.height5,
                                    letterSpacing: 2),
                              ),
                              Text(
                                'Checkout helpful tips to solve domestic accidents and health care',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: Dimensions.height4 * 3),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Image.asset('assets/images/ola.png'),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: Dimensions.height20,
                ),

                Text(
                  'Top Rated Doctors',
                  style: TextStyle(
                    fontSize: Dimensions.height20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Container(
                  height: Dimensions.height15 * 10,
                  padding: EdgeInsets.only(top: Dimensions.height10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      TopRatedDoctors(
                        name: 'Dr Druotola Rahmatallah',
                      ),
                      TopRatedDoctors(
                        name: 'Dr Wahaab Roqeebah',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Text(
                  'Upcoming Appointment',
                  style: TextStyle(
                    color: Colors.blue.shade900,
                    letterSpacing: 2,
                    fontSize: Dimensions.width25,
                  ),
                ),
                Container(
                  height: Dimensions.height200 * 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.height30),
                    ),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: const [
                        AppointmentWidget(
                          date: 'Monday, Dec 23',
                          time: '12:00 - 13:00',
                        ),
                        AppointmentWidget(
                          date: 'Monday, Sep 23',
                          time: '1:00 - 3:30',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
