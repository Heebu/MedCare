import 'package:flutter/material.dart';

import '../../Universal Reuseable Widgets/dimensions.dart';
import '../reuseables/introdoction.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    {
      _navigateToIntroPage();
    }
  }

  _navigateToIntroPage() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Intro(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: Dimensions.height200 * 2,
                width: Dimensions.width400,
                child:
                    Image.asset('assets/images/medcare.png', fit: BoxFit.fill),
              ),
            ),
            Text(
              'MedCare',
              style: TextStyle(
                fontSize: Dimensions.height40,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const Text(
              'Where Quality Health Care Matters...',
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            const CircularProgressIndicator(
              color: Colors.indigo,
            )
          ],
        ),
      ),
    );
  }
}
