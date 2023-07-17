import 'package:firebase_auth/firebase_auth.dart';
import 'package:nylo_framework/nylo_framework.dart';

import '../../config/AuthService.dart';
import '../../resources/pages/home_page.dart';

class AuthProvider implements NyProvider {
  final AuthService _authService = AuthService();
  void bttnpress() {
    routeTo(HomePage.path);
  }

  @override
  boot(Nylo nylo) async {
    // Initialization code before the app starts
    // Perform any necessary setup or configurations

    // Check if the user is already signed in with Google
    User? user = await _authService.signInWithGoogle();
    if (user != null) {
      // User is signed in with Google, navigate to home screen
      bttnpress();
    }

    return nylo;
  }

  @override
  Future<void> afterBoot(Nylo nylo) async {
    // Code to run after the app has initialized
    // Perform any additional actions or logic

    return;
  }
}
