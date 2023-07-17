import 'package:RahnumaUser/resources/pages/overview_page.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/controller.dart';

class SplashScreenPage extends NyStatefulWidget {
  final Controller controller = Controller();

  static const path = '/splash-screen';

  SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends NyState<SplashScreenPage> {
  @override
  init() async {
    super.init();
    _navigateToNextScreen();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _navigateToNextScreen() async {
    print("inside splashscreen");
    // Add a delay of 2 seconds (adjust as per your requirement)
    await Future.delayed(Duration(seconds: 360));

    // Navigate to the FlightBookingPage or any other desired page
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(builder: (context) => OverviewPage()),
    // );
    routeTo(OverviewPage.path);
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    double height = screenSize.height;

    return SafeArea(
      child: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: screenSize.height * 0.48,
              left: screenSize.width * 0.2,
              child: Container(
                width: screenSize.width * 0.6,
                height: screenSize.height * 0.042,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: screenSize.height * 0.05,
                      left: screenSize.width * 0.05,
                      child: Image.asset('Logo.png'),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenSize.height * -0.01287553648,
              left: screenSize.width * -0.11381395348,
              child: Container(
                width: 215,
                height: 215,
                decoration: BoxDecoration(
                  color: Color(0xFF023656),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(
                      screenSize.width * 0.5,
                      screenSize.width * 0.5,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenSize.height * 0.86475321888,
              left: screenSize.width * 0.65476744186,
              child: Transform.rotate(
                angle: -28.35783965501469 * (math.pi / 180),
                child: Container(
                  width: 198.7,
                  height: 198.7,
                  decoration: BoxDecoration(
                    color: Color(0xFFF27E63),
                    borderRadius: BorderRadius.all(
                      Radius.elliptical(
                        screenSize.width * 0.5,
                        screenSize.width * 0.5,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -screenSize.height * 0.127,
              left: screenSize.width * 0.028,
              child: Container(
                width: screenSize.width * 0.46,
                height: screenSize.width * 0.46,
                decoration: BoxDecoration(
                  color: Color(0xFF0388A6),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(
                      screenSize.width * 0.499,
                      screenSize.width * 0.5,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenSize.height * 0.77889484978,
              left: screenSize.width * 0.88139534883,
              child: Transform.rotate(
                angle: -28.36 * (math.pi / 180),
                child: Container(
                  width: 198.7,
                  height: 198.7,
                  decoration: BoxDecoration(
                    color: Color(0xFF00A991),
                    borderRadius: BorderRadius.all(
                      Radius.elliptical(
                        screenSize.width * 0.5,
                        screenSize.width * 0.5,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
