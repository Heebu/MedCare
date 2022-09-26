import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/Introduction/SignIn_SignUp_ForgttenPassword/SignUp.dart';
import 'package:intro_slider/intro_slider.dart';

// class IntroScreenDefaultState extends State<StatefulWidget> {
//   List<Slide> slides = [];
//
//   @override
//   void initState() {
//     super.initState();
//
//     slides.add(
//       Slide(
//         title: "MedCare",
//         pathImage: 'assets/images/ola.png',
//         description: 'Where Quality Health Car Matters',
//         styleTitle: const TextStyle(color: Color(0xFF1A237E)),
//         backgroundColor: Colors.blue.shade900,
//       ),
//     );
//
//     slides.add(
//       Slide(
//         title: "Book a Section",
//         styleTitle: const TextStyle(color: Color(0xFF1A237E)),
//         description:
//             "Book a fast and affordable session with our professional Doctors. Therapist and life coaches",
//         pathImage: "assets/images/blood pressure.jpg",
//         backgroundColor: Colors.blue.shade900,
//       ),
//     );
//
//     slides.add(
//       Slide(
//         title: "Pharmacies doesn't get closer than this",
//         styleTitle: const TextStyle(color: Color(0xFF1A237E)),
//         description:
//             "Order from your favorite local pharmacy and get your medical supplies"
//             "delivered at your doorstep",
//         pathImage: "assets/images/nureo pillls.jpg",
//         backgroundColor: Colors.blue.shade600,
//       ),
//     );
//     slides.add(
//       Slide(
//         title: "Response Actions",
//         styleTitle: const TextStyle(color: Color(0xFF1A237E)),
//         description: "We're always available for your service 24/7",
//         pathImage: "assets/images/other pills.jpg",
//         backgroundColor: Colors.blue.shade100,
//       ),
//     );
//   }
//
//   void onDonePress() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => const SignUp(),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return IntroSlider(
//       slides: slides,
//       onDonePress: onDonePress,
//       autoScroll: true,
//       colorActiveDot: Colors.white54,
//       colorDot: Colors.white,
//       pauseAutoPlayOnTouch: true,
//       showPrevBtn: true,
//       showSkipBtn: true,
//       onSkipPress: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const SignUp(),
//           ),
//         );
//       },
//       autoScrollInterval: const Duration(seconds: 5),
//     );
//   }
// }

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  List<Slide> slides = [];

  late Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
        title: "MedCare",
        pathImage: 'assets/images/ola.png',
        description: 'Where Quality Health Care Matters',
        styleTitle: const TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        backgroundColor: Colors.indigo.shade900,
      ),
    );

    slides.add(
      Slide(
        title: "Book a Section",
        styleTitle: const TextStyle(
            color: Color(0xFF1A237E),
            fontSize: 30,
            fontWeight: FontWeight.bold),
        description:
            "Book a fast and affordable session with our professional Doctors. Therapist and life coaches",
        pathImage: "assets/images/blood pressure.jpg",
        backgroundColor: Colors.blue.shade200,
      ),
    );

    slides.add(
      Slide(
        title: "Pharmacies doesn't get closer than this",
        styleTitle: const TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        description:
            "Order from your favorite local pharmacy and get your medical supplies"
            "delivered at your doorstep",
        pathImage: "assets/images/nureo pillls.jpg",
        backgroundColor: Colors.indigo.shade900,
      ),
    );
    slides.add(
      Slide(
        title: "Response Actions",
        styleTitle: const TextStyle(
            color: Color(0xFF1A237E),
            fontSize: 30,
            fontWeight: FontWeight.bold),
        description: "We're always available for your service 24/7",
        pathImage: "assets/images/other pills.jpg",
        backgroundColor: Colors.blue.shade200,
      ),
    );
  }

  void onDonePress() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return SignUp();
        },
      ),
    );
  }

  void onTabChangedCompleted(index) {}
  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      size: 35,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      size: 35,
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      size: 35,
      color: Colors.white,
    );
  }

  // List<Widget> renderListCustomTabs(){
  //   List<Widget> tabs = List();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: IntroSlider(
          slides: slides,
          onDonePress: onDonePress,
          autoScroll: true,
          colorActiveDot: Colors.white,
          colorDot: Colors.black26,
          pauseAutoPlayOnTouch: true,
          showPrevBtn: true,
          showSkipBtn: true,
          showNextBtn: true,
          skipButtonStyle: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.blueGrey),
          ),
          nextButtonStyle: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.blueGrey),
          ),
          doneButtonStyle: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          onSkipPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUp(),
              ),
            );
          },
          autoScrollInterval: const Duration(seconds: 5),
        ),
      ),
    );
  }
}
