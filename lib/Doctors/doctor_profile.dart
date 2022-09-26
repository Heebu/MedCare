import 'package:flutter/material.dart';
import 'package:health_app/Doctors/reuseables.dart';
import 'package:health_app/Universal%20Reuseable%20Widgets/text.dart';

import '../Universal Reuseable Widgets/reuseable_click_button.dart';
import 'appointment_date.dart';
import 'message.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(height: 200, color: Colors.blue.shade900),
                  Container(
                    height: 300,
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 15,
                        right: 15,
                        bottom: 20,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child:
                                      const Icon(Icons.arrow_back_ios_rounded),
                                ),
                              ),
                              Header1Text(
                                text: "Profile",
                                color: Colors.white,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return const Messages();
                                    }),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Icon(Icons.mail),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 10,
                              right: 5,
                              top: 5,
                              bottom: 5,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                border: Border.all(color: Colors.black12)),
                            child: const RatedDoctors(
                              name: 'Dr. Uche Brown',
                              image: 'assets/images/Idris.jpg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Container(
                  height: 120,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ProfileScroll(
                        text1: 'patient',
                        text2: '100+',
                      ),
                      ProfileScroll(
                        text1: 'Exp.',
                        text2: '10 yr',
                      ),
                      ProfileScroll(
                        text1: 'Rating',
                        text2: '4.67',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 30,
                ),
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Header1Text(text: 'About'),
                    Text(
                      'MBBS, Ph.D, Fellow, International Collage of Surgeons.',
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ex- Professor & Head of Depertment'),
                        Text('Depertment of Neurosurgery'),
                        Text('University College Hospital, Ibadan.'),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 20,
                        left: 10,
                        right: 10,
                      ),
                      height: 100,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.shade100,
                            ),
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.only(right: 15),
                            width: 70,
                            child: const Center(
                              child: Icon(Icons.access_time),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return AppointmentDate();
                                  },
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Text>[
                                Text(
                                  'Available',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('Monday - Friday'),
                                Text(
                                  '9am - 6pm',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return AppointmentDate();
                          }),
                        );
                      },
                      child: ClickButton(
                        text: 'Book an Appointment',
                        color: Colors.blue.shade50,
                        size: 25,
                      ),
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

class ProfileScroll extends StatelessWidget {
  const ProfileScroll({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blueGrey.shade100,
      ),
      width: 120,
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 10,
        right: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text1,
            style: TextStyle(fontSize: 17),
          ),
          Text(
            text2,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
