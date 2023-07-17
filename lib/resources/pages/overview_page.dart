import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/controller.dart';
import 'home_page.dart';
import 'login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class OverviewPage extends NyStatefulWidget {
  final Controller controller = Controller();

  static const path = '/overview';

  OverviewPage({Key? key}) : super(key: key);

  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends NyState<OverviewPage> {
  @override
  init() async {
    super.init();
  }

  @override
  void dispose() {
    super.dispose();
  }

  int _currentCarouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(height: 65),
              Container(
                width: screenSize.width, // Adjusted width based on screen size
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  // border: Border.all(color: Colors.grey),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Stack(
                    children: [
                      CarouselSlider(
                        items: [
                          // Your carousel items here
                          // Example:
                          Container(
                            color: Color(0xFFE6F3F6),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 180),
                                  Container(
                                    alignment: Alignment.center,
                                    constraints: BoxConstraints(
                                      maxWidth: screenSize.width * 0.8,
                                    ),
                                    child: Text(
                                      'Mental health support at your fingertips!',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunito(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF023656),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    constraints: BoxConstraints(
                                      maxWidth: screenSize.width * 0.8,
                                    ),
                                    child: Text(
                                      'Connect with compassionate professionals instantly, finding relief and guidance when you need it most. Our mental health professionals are committed to helping you thrive and overcome challenges. ',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Color(0xFFE6F3F6),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 180),
                                  Container(
                                    alignment: Alignment.center,
                                    constraints: BoxConstraints(
                                      maxWidth: screenSize.width * 0.8,
                                    ),
                                    child: Text(
                                      'Tailored just for you!',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunito(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF023656),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    constraints: BoxConstraints(
                                      maxWidth: screenSize.width * 0.8,
                                    ),
                                    child: Text(
                                      'Take charge of your well-being, with personalized support tailored to your unique needs. We are here to connect  you with professionals who can provide the assistance you deserve. ',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Color(0xFFE6F3F6),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 180),
                                  Container(
                                    alignment: Alignment.center,
                                    constraints: BoxConstraints(
                                      maxWidth: screenSize.width * 0.8,
                                    ),
                                    child: Text(
                                      'Say goodbye to long wait times for support!',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunito(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF023656),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    constraints: BoxConstraints(
                                      maxWidth: screenSize.width * 0.8,
                                    ),
                                    child: Text(
                                      'Our instant messaging feature breaks down geographical and scheduling limitations, allowing you to connect with empathetic professionals anytime, anywhere. ',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: screenSize.height *
                              0.78, // Adjust the height dynamically
                          viewportFraction: 1.0, // Show only one item at a time
                          enlargeCenterPage: false,
                          autoPlay: false, // Disable auto-play
                          enableInfiniteScroll:
                              false, // Disable infinite scroll
                          initialPage: _currentCarouselIndex,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentCarouselIndex = index;
                            });
                          },
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(3, (int index) {
                            return Container(
                              width: 8,
                              height: 8,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentCarouselIndex == index
                                    ? Color(0xFF023656)
                                    : Colors.grey,
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Positioned(
                top: 900,
                left: 15,
                child: Container(
                  width:
                      screenSize.width, // Adjusted width based on screen size
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      routeTo(HomePage.path);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF27E63), // Set the desired color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    child: Text('Get Started'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
