
import 'package:get/get.dart';
import 'package:mvc/View/login_screen.dart';
import 'package:mvc/View/splash_screen.dart';
import 'package:mvc/res/Routes/RoutesName.dart';

class AppRoutes{

    static appRoutes()=>[
        GetPage(
            
            name: RoutesName.splashScreen, 
            page: ()=>Splash_Screen(),
            transition: Transition.rightToLeft,
            transitionDuration: const Duration(microseconds: 2000)
        
            ),

            GetPage(
                name: RoutesName.loginScreen, 
                page: ()=>const Login_Screen(),
                transition: Transition.rightToLeft,
                transitionDuration: const Duration(microseconds: 2000)
            )
    ];
    
}