import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

import '../../app/events/login_event.dart';
import '../../bootstrap/helpers.dart';
import '../pages/overview_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);
  void dispatchSocialLoginEvent() {
    event<LoginEvent>(data: {});
    print("eventsent"); // Dispatch the social login event
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 209, 228, 243),
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              // Handle profile option tap
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Sign In'),
            onTap: () {
              dispatchSocialLoginEvent();
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sign Out'),
            onTap: () {
              // Handle sign out option tap
              routeTo(OverviewPage.path);
            },
          ),
        ],
      ),
    );
  }
}
