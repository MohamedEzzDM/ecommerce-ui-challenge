

import 'package:ecommerce/screens/details/product_details.dart';
import 'package:ecommerce/screens/forget_password/forget_passoword_screen.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/login/login_screen.dart';
import 'package:ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce/screens/splash/splash_screen.dart';

final routes =
  {
    SplashScreen.id         : (_)=>const SplashScreen(),
    LoginScreen.id          : (_)=> const LoginScreen(),
    SignUpScreen.id         : (_)=> const SignUpScreen(),
    ForgetPasswordScreen.id : (_)=> const ForgetPasswordScreen(),
    HomeScreen.id          : (_)=> const HomeScreen(),
    ProductDetailsScreen.id: (_)=> const ProductDetailsScreen(),

  }
 ;