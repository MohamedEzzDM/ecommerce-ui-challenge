import 'package:ecommerce/coponents/default_button.dart';
import 'package:ecommerce/screens/forget_password/forget_passoword_screen.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/login/components/social_icon.dart';
import 'package:ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce/size_config.dart';
import 'package:ecommerce/utils/constants.dart';
import 'package:flutter/material.dart';

import 'components/default_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String id = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
          style: TextStyle(
            color: kTextColor,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(25)),
            child: Form(
              key: loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(28)),
                    ),
                  ),
                  Text("Sign in with your email and password",
                      style: TextStyle(
                          color: kTextColor,
                          fontSize: getProportionateScreenWidth(13))),
                  Text("or continue with the social media",
                      style: TextStyle(
                          color: kTextColor,
                          fontSize: getProportionateScreenWidth(13))),
                  SizedBox(
                    height: getProportionateScreenHeight(70),
                  ),
                  DefaultTextFormField(
                    label: 'Email',
                    hintText: 'Enter your email',
                    icon: Icons.email_outlined,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  DefaultTextFormField(
                    label: 'Password',
                    hintText: 'Enter your password',
                    icon: Icons.password_outlined,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text("Remember me"),
                      Spacer(),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: kSecondaryColor,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, ForgetPasswordScreen.id);

                        },
                        child: Text(
                          "Forget Password",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),


                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: getProportionateScreenHeight(50),
                    child: DefaultButton(
                      text: "Continue",
                      onPressed: (){
                        if(loginFormKey.currentState!.validate()){

                          print("gg");

                        }
                        Navigator.pushNamed(context, HomeScreen.id);

                      },
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(60),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      SocialIcon(path: "assets/icons/google-icon.svg"),
                      SocialIcon(path: "assets/icons/facebook-2.svg"),
                      SocialIcon(path: "assets/icons/twitter.svg"),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: kSecondaryColor,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, SignUpScreen.id);
                          print("gg");

                        },
                        child: Text(
                          "Sign Up",
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.8)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
