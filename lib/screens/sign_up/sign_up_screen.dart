import 'package:flutter/material.dart';

import '../../coponents/default_button.dart';
import '../../size_config.dart';
import '../../utils/constants.dart';
import '../login/components/default_text_form_field.dart';
import '../login/components/social_icon.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const String id = "SignUpScreen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  @override
  Widget build(BuildContext context) {
    var signUpFormKey= GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
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
              key: signUpFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Register Account",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(28)),
                    ),
                  ),
                  Text("Complete your details or continue",
                      style: TextStyle(
                          color: kTextColor,
                          fontSize: getProportionateScreenWidth(13))),
                  Text(" with the social media",
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
                    height: getProportionateScreenHeight(40),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: getProportionateScreenHeight(50),
                    child: DefaultButton(
                      text: "Continue",
                      onPressed: (){
                        if(signUpFormKey.currentState!.validate()){

                          print("gg");

                        }

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
                      Text("Do you have an account?"),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: kSecondaryColor,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Sign In",
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
