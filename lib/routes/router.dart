import '/resources/pages/home_page.dart';
import '/resources/pages/login_screen.dart';
import 'package:nylo_framework/nylo_framework.dart';

appRouter() => nyRoutes((router) {
      router.route(LoginScreen.path, (context) => LoginScreen(),
          initialRoute: true);
      router.route(HomePage.path, (context) => HomePage());

      // Add your routes here

      // router.route(NewPage.path, (context) => NewPage(), transition: PageTransitionType.fade);
    });
