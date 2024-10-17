import 'package:get/get.dart';
import 'package:getxwithnotesapp/Views/home.dart';
import 'package:getxwithnotesapp/Views/note.dart';
import 'package:getxwithnotesapp/Views/signup_screen.dart';
import 'package:getxwithnotesapp/Views/splash_screen.dart';
import 'package:getxwithnotesapp/routes/routes_name.dart';
import '../Views/login_screen.dart';


class RoutePages{
  static List<GetPage<dynamic>>? routes =[
    GetPage(
      name: RoutesName.Splash,
      page: () => Splashview(),
    ),
    GetPage(
      name: RoutesName.Login,
      page: () => LoginPage(),
    ),
    GetPage(
      name: RoutesName.Registration,
      page: () => RegistrationPage(),
    ),
    GetPage(
        name: RoutesName.Home,
        page: () => HomePage(),
    ),
    GetPage(
      name: RoutesName.NoteScreen,
      page: () => NoteScreen(),
    ),

  ];
}