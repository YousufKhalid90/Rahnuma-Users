import '../resources/pages/overview_page.dart';
import '../resources/pages/splash_screen_page.dart';
import '/resources/pages/home_page.dart';
import '/resources/pages/login_screen.dart';
import 'package:nylo_framework/nylo_framework.dart';

appRouter() => nyRoutes((router) {
      router.route(SplashScreenPage.path, (context) => SplashScreenPage(),
          initialRoute: true);
      router.route(LoginScreen.path, (context) => LoginScreen());
      router.route(OverviewPage.path, (context) => OverviewPage());
      router.route(HomePage.path, (context) => HomePage());

      // Add your routes here

      // router.route(NewPage.path, (context) => NewPage(), transition: PageTransitionType.fade);
    });
