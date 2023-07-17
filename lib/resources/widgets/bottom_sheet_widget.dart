import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../app/events/login_event.dart';
import '../../bootstrap/helpers.dart';
import '../pages/home_page.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

  void dispatchSocialLoginEvent() {
    event<LoginEvent>(data: {});
    print("eventsent"); // Dispatch the social login event
  }

  void bttnpress() {
    routeTo(HomePage.path);
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.25,
      child: Wrap(
        children: [
          Container(
            width: screenSize.width,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                dispatchSocialLoginEvent();
                // bttnpress();
              },
              child: Text(
                "SignIn with Google",
                style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
        ],
      ),
      padding: EdgeInsets.all(16.0),
    );
  }
}
