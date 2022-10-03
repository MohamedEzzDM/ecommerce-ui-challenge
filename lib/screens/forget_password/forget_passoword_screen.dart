import 'package:flutter/material.dart';

import '../../coponents/default_button.dart';
import '../../size_config.dart';
import '../../utils/constants.dart';
import '../login/components/default_text_form_field.dart';

import '../sign_up/sign_up_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);
  static const id = "ForgetPassword";

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final forgetPasswordFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forget Password",
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
              key: forgetPasswordFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Forger Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(28)),
                    ),
                  ),
                  Text("Please enter your email and we will send",
                      style: TextStyle(
                          color: kTextColor,
                          fontSize: getProportionateScreenWidth(13))),
                  Text("you a link to return your account",
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

                  SizedBox(
                    width: double.infinity,
                    height: getProportionateScreenHeight(50),
                    child: DefaultButton(
                      text: "Continue",
                      onPressed: (){
                        if(forgetPasswordFormKey.currentState!.validate()){

                          print("gg");

                        }

                      },
                    ),
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

