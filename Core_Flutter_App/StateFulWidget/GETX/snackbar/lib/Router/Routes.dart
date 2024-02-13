import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:snackbar/Router/FirstScreen.dart';
import 'package:snackbar/Router/Rounting.dart';
import 'package:snackbar/Router/SecondScreen.dart';

/// Routes name to directly navigate the route by its name
class Routes {
  static String screen1 = '/';
  static String screen2 = '/firstScreen';
  static String screen3 = '/secondScreen';
}


final getpages = [
    GetPage(
        name: Routes.screen1,
        page: () => const MyNavigator(),
    ),
    GetPage(
        name: Routes.screen2,
        page: () => const FirstScreeen(),
    ),
    GetPage(
        name: Routes.screen3,
        page: () => const SecondScreen(),
    ),

];
