import 'package:RahnumaUser/resources/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../../app/events/login_event.dart';
import '/bootstrap/helpers.dart';
import '/resources/widgets/safearea_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:nylo_framework/theme/helper/ny_theme.dart';

class LoginScreen extends NyStatefulWidget {
  @override
  //final LoginController controller = LoginController();

  static const path = '/login';

  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends NyState<LoginScreen> {
  @override
  init() async {
    super.init();
  }

  void bttnpress() {
    routeTo(HomePage.path);
  }

  void dispatchSocialLoginEvent() {
    event<LoginEvent>(data: {}); // Dispatch the social login event
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: SafeAreaWidget(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Logo(),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
                //controller: widget.controller.usernameController,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,

                /// controller: widget.controller.passwordController,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: bttnpress,
                child: Text('Login'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                // onPressed: dispatchSocialLoginEvent,
                onPressed: bttnpress,
                child: Text('Google Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
