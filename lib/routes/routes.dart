import 'package:get/get.dart';
import 'package:vinove_practice/screens/onboarding/name_screen.dart';
import 'package:vinove_practice/screens/onboarding/otp_screen.dart';
import 'package:vinove_practice/screens/onboarding/sign_in.dart';

class Routes {
  static final routes = [
    GetPage(name: '/sign-in', page: () => SignIn(), ),
    GetPage(name: '/otp', page: () => OtpScreen(), ),
    GetPage(name: '/name-entry', page: () =>  NameScreen(),),
  ];
}
