import 'package:nylo_framework/nylo_framework.dart';
import '../../config/AuthService.dart';
import '../../resources/pages/home_page.dart';

import 'package:firebase_auth/firebase_auth.dart';

class LoginEvent implements NyEvent {
  @override
  final listeners = {
    SocialLoginListener: SocialLoginListener(),
  };

  LoginEvent();
}

void pressbttn() {
  routeTo(HomePage.path);
}

class SocialLoginListener extends NyListener {
  final AuthService authService = AuthService();

  handle(dynamic event) async {
    try {
      // Handle the social login event
      User? user = (await authService.signInWithGoogle());

      if (user != null) {
        print("inside if");
        pressbttn();
        // Handle successful authentication
        // Perform additional actions, such as navigating to a new screen, updating user data, etc.
      } else {
        // Handle sign-in cancellation
        print('error');
      }
    } catch (e) {
      print(e);
      // Handle sign-in error
    }
  }
}
