// import 'dart:js';
// import 'package:commerce/profile/profile_screen.dart';
import 'package:commerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:commerce/screens/details/details_screen.dart';
import 'package:commerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:commerce/screens/home/home_screen.dart';
import 'package:commerce/screens/login_success/login_success_screen.dart';
import 'package:commerce/screens/map_screen/map_screen.dart';
import 'package:commerce/screens/otp/otp_screen.dart';
import 'package:commerce/screens/profile/profile_screen.dart';
import 'package:commerce/screens/sign_in/sign_in_screen.dart';
import 'package:commerce/screens/sign_up/sign_up_screen.dart';
import 'package:commerce/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes ={
  '/splash_screen' : (context) => SplashScreen(),
  '/sign_in_screen' : (context) => SignInScreen(),
  '/forgot_password_screen' :(context) => ForgotPasswordScreen(),
  '/login_success_screen' :(context) => LoginSuccessScreen(),
  '/sign_up_screen' : (context) => SignUpScreen(),
  '/cpmplete_profile_screen' : (context) => CpmpleteProfileScreen(),
  '/otp_screen' : (context) => OtpScreen(),
  '/home_screen' : (context) => HomeScreen(),
  '/details' : (context) => DetailsScreen(),
  '/profile_screen' : (context) => ProfileScreen(),
  '/map_screen' : (context) => MapScreen(),
};