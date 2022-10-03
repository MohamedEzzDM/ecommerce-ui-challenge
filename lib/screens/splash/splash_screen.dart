import 'package:ecommerce/coponents/default_button.dart';
import 'package:ecommerce/screens/login/login_screen.dart';
import 'package:ecommerce/size_config.dart';
import 'package:ecommerce/utils/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String id = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 1,
              ),
              Text(
                "EL GOM3A",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(30),
                    color: kPrimaryColor),
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              Text("Welcome to Elgom3a market"),
              Spacer(
                flex: 2,
              ),
              Image.asset(
                "assets/images/splash_1.png",
                width: getProportionateScreenWidth(250),
                height: getProportionateScreenHeight(400),
              ),
              Spacer(
                flex: 2,
              ),
              SizedBox(
                width: SizeConfig.screenWidth - getProportionateScreenWidth(40),
                height: getProportionateScreenHeight(50),
                child: DefaultButton(
                  text: 'start',
                  onPressed: (){
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
