import 'package:flutter/material.dart';

import '../../Universal Reuseable Widgets/dimensions.dart';

//Services
class Services extends StatelessWidget {
  const Services({
    Key? key,
    required this.icons,
    required this.text,
    required this.details,
    required this.colors,
    required this.boxColor,
    required this.navigator,
  }) : super(key: key);

  final IconData icons;
  final String text;
  final String details;
  final Color colors;
  final Color boxColor;
  final Widget navigator;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => navigator),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        margin: const EdgeInsets.only(right: 30),
        padding: EdgeInsets.only(
          left: Dimensions.width5,
          right: Dimensions.width5,
          top: Dimensions.height10,
          bottom: Dimensions.height10,
        ),
        width: Dimensions.width10 * 15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icons,
              color: colors,
              size: Dimensions.height50,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: Dimensions.height15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Center(
              child: Text(
                details,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Appointment widget
class AppointmentWidget extends StatelessWidget {
  const AppointmentWidget({
    Key? key,
    required this.date,
    required this.time,
  }) : super(key: key);
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height70,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(Dimensions.height20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.perm_contact_calendar_sharp,
            color: Colors.blue.shade900,
          ),
          SizedBox(
            width: Dimensions.width10,
          ),
          Text(
            date,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Icon(
            Icons.access_time,
            color: Colors.blue.shade900,
          ),
          SizedBox(
            width: Dimensions.width20,
          ),
          Text(
            time,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

//Top Rated Doctors
class TopRatedDoctors extends StatelessWidget {
  const TopRatedDoctors({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height15 * 10,
      width: Dimensions.width200 + Dimensions.width30,
      margin: const EdgeInsets.only(right: 30),
      padding: EdgeInsets.only(
          right: Dimensions.width5,
          top: Dimensions.height10,
          left: Dimensions.width5),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade50,
        borderRadius: BorderRadius.circular(Dimensions.height10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: Dimensions.height30,
              ),
              const Spacer(),
              SizedBox(
                width: Dimensions.width15 * 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: Dimensions.height15),
                    ),
                    Text(
                      'MBBS, ND-HND-Ophthmology',
                      style: TextStyle(
                        fontSize: Dimensions.height10,
                        color: Colors.black26,
                      ),
                    ),
                    Row(
                      children: const [
                        ReuseableStar(),
                        ReuseableStar(),
                        ReuseableStar(),
                        ReuseableStar(),
                        ReuseableStar(),
                      ],
                    ),
                    Text(
                      'Saint Francis Memorial Hospital',
                      style: TextStyle(
                        fontSize: Dimensions.height10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: Dimensions.height2,
            color: Colors.black12,
          ),
          SizedBox(
            height: Dimensions.height40,
          ),
        ],
      ),
    );
  }
}

//Reuseable Stars
class ReuseableStar extends StatelessWidget {
  const ReuseableStar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.lightGreenAccent.shade200,
      size: Dimensions.height15,
    );
  }
}
