import 'package:get/get.dart';
import 'package:trysell_website/screens/home/components/login_screen.dart';
import 'package:trysell_website/screens/home/components/signup_screen.dart';
import 'package:trysell_website/screens/main/main_screen.dart';

class Routes {
  static final routes = [
    GetPage(
      name: "/",
      page: () => const MainScreen(),
    ),
    GetPage(
      name: "/login",
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: "/signup",
      page: () => const SignUpScreen(),
    )
  ];
}
